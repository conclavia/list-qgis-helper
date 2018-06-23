# LIST Open Data QGIS Helper

Downloads data from [LISTdata](https://listdata.thelist.tas.gov.au/opendata/) and sets it up in a convenient folder structure for working with QGIS.

## Configuring

### What to download

The **request.json** file controls the list of datasets and municipalities to download. Names should match the visual names shown on the LIST site (not the formatted names of the ZIP files).

e.g. to download the **LIST Contours 5m** dataset for the **Clarence** and **Sorell** municipalities:

```json
{
  "municipalities": ["Clarence", "Sorell"],
  "datasets": ["LIST Contours 5m"]
}
```

The ESRI Shapefile files will be extracted automatically so they can be loaded into QGIS (.shp, .shx, .dbf, .prj).

The script will politely pause for 30-60 seconds between each file download to minimize any impact on the LIST servers when pulling multiple datasets.

Any existing dataset zip files found in the download folder will be re-used if possible. To force re-downloading of the files just delete them or point to an empty download directory.

### Styles to apply

If a QGIS style file (.qml) is found in the **styles** directory that matches the formatted dataset name it will be copied alongside each set of shapefiles. That will ensure QGIS applies it automatically when the shapefile is loaded.

To use your own custom style files instead of those provided here you can either replace the existing .qml files or point to a directory containing your own files.

## Installing

Install dependencies using [pipenv](https://github.com/pypa/pipenv).

```
$ pipenv install
```

To activate this project's virtualenv, run the following:

```
$ pipenv shell
```

## Running the script

```
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
```
