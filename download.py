#!/usr/bin/env python3
"""LIST Open Data QGIS Helper

Downloads data from:
    https://listdata.thelist.tas.gov.au/opendata/

Sets it up in a convenient folder structure to work with in QGIS.

Usage:
  ./download.py [options]

Options:
  -h --help                  Show this screen
  --version                  Show version
  -i FILE, --index FILE      File containing the index of data available on LIST [default: ./index.json]
  -r FILE, --request FILE    File containing the datasets and municipalities to be downloaded [default: ./request.json]
  -d DIR, --downloads DIR    Where to store downloaded zip files [default: ~/gis/list_data/downloads]
  -e DIR, --extracts DIR     Where to store extracted shape files [default: ~/gis/list_data/shapes]
  -s DIR, --styles DIR       Where to look for style files to apply  [default: ./styles]
"""

from docopt import docopt
import json
import os
from os import path
import re
import requests
from random import randint
from time import sleep
from zipfile import ZipFile, BadZipFile
from shutil import copyfileobj, rmtree, copyfile

download_source = "https://listdata.thelist.tas.gov.au/opendata/data/"


def format_filename(filename):
    return re.sub(
        r"( |\'|-|\/)",
        "_",
        filename
    )


def download_file(url, target):
    headers = {
        "User-Agent":
            "Mozilla/5.0 (Windows NT 10.0; Win64; x64) "
            "AppleWebKit/537.36 (KHTML, like Gecko) "
            "Chrome/67.0.3396.87 Safari/537.36"
    }

    with requests.get(url, stream=True, headers=headers) as request:
        if request.status_code != 200:
            raise ValueError(
                f'Server returned HTTP status code {request.status_code} when downloading "{url}"')
        with open(target, "wb") as file:
            copyfileobj(request.raw, file)


def acquire_data(filename, destination):
    print(f'  Acquiring "{filename}"')

    target = path.join(destination, filename)

    if path.isfile(target) and path.getsize(target) > 0:
        try:
            with ZipFile(target) as archive:
                if archive.testzip() is None:
                    print("    Already downloaded")
                    return
        except BadZipFile:
            pass

        print("    File exists but appears to be corrupted... re-downloading")
        os.remove(target)

    if not path.isdir(destination):
        os.makedirs(destination)

    url = download_source + filename
    print(f"    Downloading {url} -> {target}")
    download_file(url, target)
    sleep(randint(30, 60))


def extract_shapefile(source, destination):
    print("  Extracting shapes")

    if not path.isdir(destination):
        os.makedirs(destination)

    shapefile_extensions = [".shp", ".shx", ".dbf", ".prj"]
    with ZipFile(source) as archive:
        for entry in archive.infolist():
            filename = entry.filename.lower()
            if not filename.startswith("municipality_") and any(filename.endswith(e) for e in shapefile_extensions):
                print(f"    {filename}")
                archive.extract(entry, destination)


def apply_style(source, destination):
    print("  Applying styles")

    if not path.isfile(source):
        print(f"    No style file available at {source}")
        return

    print(f'    Copying style "{source}" to "{destination}"')
    copyfile(source, destination)


def download_dataset(dataset, region_name, download_dir, extract_dir, style_dir):
    print(f'Setting up "{dataset[0]}" for "{region_name}"')

    formatted_dataset = format_filename(dataset[5]).lower()
    formatted_region = format_filename(region_name).lower()
    filename = f"{formatted_dataset.upper()}_{formatted_region.upper()}.zip"

    acquire_data(filename, download_dir)

    extract_shapefile(
        path.join(download_dir, filename),
        path.join(extract_dir, formatted_region)
    )

    style_source = path.join(style_dir, f"{formatted_dataset}.qml")
    style_destination = path.join(extract_dir, formatted_region, f"{formatted_dataset}_{formatted_region}.qml")
    apply_style(
        style_source,
        style_destination
    )

    print("  Done!")


def validate(index, download):
    for municipality_name in download["municipalities"]:
        if not any(m[0] == municipality_name for m in index["municipalities"]):
            raise ValueError(f'Municipality "{municipality_name}" not found in the index data')

    for dataset_name in download["datasets"]:
        if not any(d[0] == dataset_name for d in index["datasets"]):
            raise ValueError(f'Dataset "{dataset_name}" not found in the index data')


def download_list_data(
        index_file,
        request_file,
        download_dir,
        extract_dir,
        style_dir
):
    with open(index_file) as f:
        index = json.load(f)

    with open(request_file) as f:
        download = json.load(f)

    print("Validating the request")

    validate(index, download)

    print("Cleaning up existing files")

    if path.isdir(extract_dir):
        rmtree(extract_dir)

    for dataset_name in download["datasets"]:
        dataset = next(d for d in index["datasets"] if d[0] == dataset_name)

        if dataset[1] == "municipality":
            regions = download["municipalities"]
        elif dataset[1] == "statewide":
            regions = [dataset[1]]
        else:
            raise ValueError(
                f'Data set "{dataset_name}" is only available for download by area '
                f'"{dataset[1]}", which is not currently supported by this script')

        for region_name in regions:
            download_dataset(dataset, region_name, download_dir, extract_dir, style_dir)


def run_with_sensible_defaults(args):
    script_dir = path.dirname(path.realpath(__file__))

    style_dir = path.join(script_dir, "styles") \
        if args["--styles"] == "./styles" \
        else args["--styles"]

    index_file = path.join(script_dir, "index.json") \
        if args["--index"] == "./index.json" \
        else args["--index"]

    request_file = path.join(script_dir, "request.json") \
        if args["--request"] == "./request.json" \
        else args["--request"]

    data_dir = path.join(path.expanduser("~"), "gis", "list_data")

    download_dir = path.join(data_dir, "downloads") \
        if args["--downloads"] == "~/gis/list_data/downloads" \
        else args["--downloads"]

    extract_dir = path.join(data_dir, "shapes") \
        if args["--extracts"] == "~/gis/list_data/shapes" \
        else args["--extracts"]

    download_list_data(
        index_file,
        request_file,
        download_dir,
        extract_dir,
        style_dir
    )


if __name__ == '__main__':
    arguments = docopt(__doc__, version='LIST Downloader 1.0')
    run_with_sensible_defaults(arguments)
