<!DOCTYPE qgis PUBLIC 'http://mrcc.com/qgis.dtd' 'SYSTEM'>
<qgis simplifyAlgorithm="0" version="3.0.3-Girona" maxScale="0" labelsEnabled="0" readOnly="0" hasScaleBasedVisibilityFlag="0" simplifyDrawingHints="1" simplifyLocal="1" simplifyDrawingTol="1" minScale="1e+8" simplifyMaxScale="1">
  <renderer-v2 forceraster="0" type="RuleRenderer" symbollevels="0" enableorderby="0">
    <rules key="{f6005df1-5260-4041-93e1-24b8fb81aed2}">
      <rule key="{789f6485-bb7b-45c5-9ae9-a5d59e161b3c}" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS = 'National/State Highway' AND&#xa;SURFACE_TY = 'Sealed'" label="Road - Highway - Sealed" symbol="0"/>
      <rule key="{70733c5a-5f89-4bfe-9d82-c70b9d14d83c}" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS = 'National/State Highway' AND&#xa;SURFACE_TY != 'Sealed'" label="Road - Highway - Unsealed" symbol="1"/>
      <rule key="{568ecfba-0b76-4e07-b8f5-166386711176}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;array_contains(array('Arterial Road', 'Sub Arterial Road', 'Collector Road'), TRAN_CLASS) AND&#xa;SURFACE_TY = 'Sealed'" scalemaxdenom="200000" label="Road - Major - Sealed" symbol="2"/>
      <rule key="{b8e223cb-826b-4121-8c1e-edf0ffd9350d}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;array_contains(array('Arterial Road', 'Sub Arterial Road', 'Collector Road'), TRAN_CLASS) AND&#xa;SURFACE_TY != 'Sealed'" scalemaxdenom="200000" label="Road - Major - Unsealed" symbol="3"/>
      <rule key="{b1cb5dad-ecc9-46f1-89b6-bc81d1ad8f4d}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;array_contains(array('Local Road', 'Access Road'), TRAN_CLASS) AND&#xa;SURFACE_TY = 'Sealed'" scalemaxdenom="50000" label="Road - Minor - Sealed" symbol="4"/>
      <rule key="{d0c0482e-2079-4b31-bc29-b4dc1dbc9d05}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;array_contains(array('Local Road', 'Access Road'), TRAN_CLASS) AND&#xa;SURFACE_TY != 'Sealed'" scalemaxdenom="50000" label="Road - Minor - Unsealed" symbol="5"/>
      <rule key="{19aa22b9-619a-4826-bc73-8f2c9eded9c6}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS = 'Vehicular Track' AND&#xa;SURFACE_TY = 'Sealed'" scalemaxdenom="50000" label="Road - Track - Sealed" symbol="6"/>
      <rule key="{ca3816fe-eca2-48f0-a55a-a613bbfd137b}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS = 'Vehicular Track' AND&#xa;SURFACE_TY != 'Sealed'" scalemaxdenom="50000" label="Road - Track - Unsealed" symbol="7"/>
      <rule key="{b7356a78-1937-4c6e-82ef-e251536c4d54}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;NOT array_contains(array('National/State Highway', 'Arterial Road', 'Sub Arterial Road', 'Collector Road', 'Local Road', 'Access Road', 'Vehicular Track'), TRAN_CLASS) AND&#xa;SURFACE_TY = 'Sealed'" scalemaxdenom="50000" label="Road - Other - Sealed" symbol="8"/>
      <rule key="{ad05680b-2292-4583-8ae0-70d7ad0cc17a}" scalemindenom="1" filter="TRANS_TYPE = 'Road' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;NOT array_contains(array('National/State Highway', 'Arterial Road', 'Sub Arterial Road', 'Collector Road', 'Local Road', 'Access Road', 'Vehicular Track'), TRAN_CLASS) AND&#xa;SURFACE_TY = 'Sealed'" scalemaxdenom="50000" label="Road - Other - Unsealed" symbol="9"/>
      <rule key="{4c19ee8e-6c07-4f8e-8889-442835272905}" scalemindenom="1" filter="TRANS_TYPE = 'Track' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS = 'Bike' AND&#xa;array_contains(array('Sealed', 'Fabricated Surface'), SURFACE_TY)" scalemaxdenom="20000" label="Track - Bike - Sealed" symbol="10"/>
      <rule key="{202e7d3d-fab5-49cd-b006-bdeaaf51d7dd}" scalemindenom="1" filter="TRANS_TYPE = 'Track' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS = 'Bike' AND&#xa;NOT array_contains(array('Sealed', 'Fabricated Surface'), SURFACE_TY)" scalemaxdenom="20000" label="Track - Bike - Unsealed" symbol="11"/>
      <rule key="{bebb23a5-c243-4fb4-a672-a08bf02d5920}" scalemindenom="1" filter="TRANS_TYPE = 'Track' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS != 'Bike' AND&#xa;array_contains(array('Sealed', 'Fabricated Surface'), SURFACE_TY)" scalemaxdenom="20000" label="Track - Other - Sealed" symbol="12"/>
      <rule key="{aa329011-c34d-4003-bbe7-53cc426864fb}" scalemindenom="1" filter="TRANS_TYPE = 'Track' AND&#xa;array_contains(array('Open', 'Not Applicable'), STATUS) AND&#xa;TRAN_CLASS != 'Bike' AND&#xa;NOT array_contains(array('Sealed', 'Fabricated Surface'), SURFACE_TY)" scalemaxdenom="20000" label="Track - Other - Unsealed" symbol="13"/>
    </rules>
    <symbols>
      <symbol name="0" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="10,161,40,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="1" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="7,163,80,255"/>
          <prop k="line_style" v="dash"/>
          <prop k="line_width" v="0.75"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="10" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="25,154,153,255"/>
          <prop k="line_style" v="dash dot"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="11" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="25,154,153,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="12" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,127,0,255"/>
          <prop k="line_style" v="dash dot"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="13" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="255,127,0,255"/>
          <prop k="line_style" v="dot"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="2" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="31,120,180,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.5"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="3" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="31,120,180,255"/>
          <prop k="line_style" v="dash"/>
          <prop k="line_width" v="0.5"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="4" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="5" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="0,0,0,255"/>
          <prop k="line_style" v="dash"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="6" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="146,83,51,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="7" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="146,83,51,255"/>
          <prop k="line_style" v="dash"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="8" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="227,26,28,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
      <symbol name="9" clip_to_extent="1" type="line" alpha="1">
        <layer locked="0" pass="0" class="SimpleLine" enabled="1">
          <prop k="capstyle" v="square"/>
          <prop k="customdash" v="5;2"/>
          <prop k="customdash_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="customdash_unit" v="MM"/>
          <prop k="draw_inside_polygon" v="0"/>
          <prop k="joinstyle" v="bevel"/>
          <prop k="line_color" v="227,26,28,255"/>
          <prop k="line_style" v="solid"/>
          <prop k="line_width" v="0.3"/>
          <prop k="line_width_unit" v="MM"/>
          <prop k="offset" v="0"/>
          <prop k="offset_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <prop k="offset_unit" v="MM"/>
          <prop k="use_custom_dash" v="0"/>
          <prop k="width_map_unit_scale" v="3x:0,0,0,0,0,0"/>
          <data_defined_properties>
            <Option type="Map">
              <Option name="name" value="" type="QString"/>
              <Option name="properties"/>
              <Option name="type" value="collection" type="QString"/>
            </Option>
          </data_defined_properties>
        </layer>
      </symbol>
    </symbols>
  </renderer-v2>
  <customproperties>
    <property key="dualview/previewExpressions">
      <value>"TRANSEG_ID"</value>
    </property>
    <property key="embeddedWidgets/count" value="0"/>
    <property key="variableNames"/>
    <property key="variableValues"/>
  </customproperties>
  <blendMode>0</blendMode>
  <featureBlendMode>0</featureBlendMode>
  <layerOpacity>1</layerOpacity>
  <SingleCategoryDiagramRenderer diagramType="Histogram" attributeLegend="1">
    <DiagramCategory backgroundColor="#ffffff" penWidth="0" backgroundAlpha="255" penAlpha="255" scaleDependency="Area" enabled="0" lineSizeType="MM" maxScaleDenominator="1e+8" width="15" diagramOrientation="Up" labelPlacementMethod="XHeight" barWidth="5" height="15" sizeType="MM" minScaleDenominator="0" penColor="#000000" sizeScale="3x:0,0,0,0,0,0" rotationOffset="270" scaleBasedVisibility="0" lineSizeScale="3x:0,0,0,0,0,0" minimumSize="0" opacity="1">
      <fontProperties style="" description="Ubuntu,11,-1,5,50,0,0,0,0,0"/>
    </DiagramCategory>
  </SingleCategoryDiagramRenderer>
  <DiagramLayerSettings obstacle="0" showAll="1" placement="2" priority="0" linePlacementFlags="18" zIndex="0" dist="0">
    <properties>
      <Option type="Map">
        <Option name="name" value="" type="QString"/>
        <Option name="properties"/>
        <Option name="type" value="collection" type="QString"/>
      </Option>
    </properties>
  </DiagramLayerSettings>
  <fieldConfiguration>
    <field name="TRANSEG_ID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TRANS_TYPE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TSEG_FEAT">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="STATUS">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TRAFF_DIR">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TRAN_CLASS">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="USER_TYPE">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="TOUR_CLASS">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SURFACE_TY">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PRI_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="PRI_NOMREG">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SEC_NAME">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SEC_NOMREG">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BRIDGE_TUN">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="BRIDGE_T_1">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="AUTHORITY">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FOREIGN_ID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="COMP_LEN">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="UFI">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="FMP">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="CREATED_ON">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="LIST_GUID">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
    <field name="SHAPE_LEN">
      <editWidget type="TextEdit">
        <config>
          <Option/>
        </config>
      </editWidget>
    </field>
  </fieldConfiguration>
  <aliases>
    <alias name="" field="TRANSEG_ID" index="0"/>
    <alias name="" field="TRANS_TYPE" index="1"/>
    <alias name="" field="TSEG_FEAT" index="2"/>
    <alias name="" field="STATUS" index="3"/>
    <alias name="" field="TRAFF_DIR" index="4"/>
    <alias name="" field="TRAN_CLASS" index="5"/>
    <alias name="" field="USER_TYPE" index="6"/>
    <alias name="" field="TOUR_CLASS" index="7"/>
    <alias name="" field="SURFACE_TY" index="8"/>
    <alias name="" field="PRI_NAME" index="9"/>
    <alias name="" field="PRI_NOMREG" index="10"/>
    <alias name="" field="SEC_NAME" index="11"/>
    <alias name="" field="SEC_NOMREG" index="12"/>
    <alias name="" field="BRIDGE_TUN" index="13"/>
    <alias name="" field="BRIDGE_T_1" index="14"/>
    <alias name="" field="AUTHORITY" index="15"/>
    <alias name="" field="FOREIGN_ID" index="16"/>
    <alias name="" field="COMP_LEN" index="17"/>
    <alias name="" field="UFI" index="18"/>
    <alias name="" field="FMP" index="19"/>
    <alias name="" field="CREATED_ON" index="20"/>
    <alias name="" field="LIST_GUID" index="21"/>
    <alias name="" field="SHAPE_LEN" index="22"/>
  </aliases>
  <excludeAttributesWMS/>
  <excludeAttributesWFS/>
  <defaults>
    <default field="TRANSEG_ID" expression="" applyOnUpdate="0"/>
    <default field="TRANS_TYPE" expression="" applyOnUpdate="0"/>
    <default field="TSEG_FEAT" expression="" applyOnUpdate="0"/>
    <default field="STATUS" expression="" applyOnUpdate="0"/>
    <default field="TRAFF_DIR" expression="" applyOnUpdate="0"/>
    <default field="TRAN_CLASS" expression="" applyOnUpdate="0"/>
    <default field="USER_TYPE" expression="" applyOnUpdate="0"/>
    <default field="TOUR_CLASS" expression="" applyOnUpdate="0"/>
    <default field="SURFACE_TY" expression="" applyOnUpdate="0"/>
    <default field="PRI_NAME" expression="" applyOnUpdate="0"/>
    <default field="PRI_NOMREG" expression="" applyOnUpdate="0"/>
    <default field="SEC_NAME" expression="" applyOnUpdate="0"/>
    <default field="SEC_NOMREG" expression="" applyOnUpdate="0"/>
    <default field="BRIDGE_TUN" expression="" applyOnUpdate="0"/>
    <default field="BRIDGE_T_1" expression="" applyOnUpdate="0"/>
    <default field="AUTHORITY" expression="" applyOnUpdate="0"/>
    <default field="FOREIGN_ID" expression="" applyOnUpdate="0"/>
    <default field="COMP_LEN" expression="" applyOnUpdate="0"/>
    <default field="UFI" expression="" applyOnUpdate="0"/>
    <default field="FMP" expression="" applyOnUpdate="0"/>
    <default field="CREATED_ON" expression="" applyOnUpdate="0"/>
    <default field="LIST_GUID" expression="" applyOnUpdate="0"/>
    <default field="SHAPE_LEN" expression="" applyOnUpdate="0"/>
  </defaults>
  <constraints>
    <constraint exp_strength="0" constraints="0" field="TRANSEG_ID" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="TRANS_TYPE" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="TSEG_FEAT" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="STATUS" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="TRAFF_DIR" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="TRAN_CLASS" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="USER_TYPE" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="TOUR_CLASS" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="SURFACE_TY" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="PRI_NAME" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="PRI_NOMREG" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="SEC_NAME" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="SEC_NOMREG" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="BRIDGE_TUN" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="BRIDGE_T_1" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="AUTHORITY" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="FOREIGN_ID" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="COMP_LEN" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="UFI" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="FMP" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="CREATED_ON" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="LIST_GUID" unique_strength="0" notnull_strength="0"/>
    <constraint exp_strength="0" constraints="0" field="SHAPE_LEN" unique_strength="0" notnull_strength="0"/>
  </constraints>
  <constraintExpressions>
    <constraint exp="" field="TRANSEG_ID" desc=""/>
    <constraint exp="" field="TRANS_TYPE" desc=""/>
    <constraint exp="" field="TSEG_FEAT" desc=""/>
    <constraint exp="" field="STATUS" desc=""/>
    <constraint exp="" field="TRAFF_DIR" desc=""/>
    <constraint exp="" field="TRAN_CLASS" desc=""/>
    <constraint exp="" field="USER_TYPE" desc=""/>
    <constraint exp="" field="TOUR_CLASS" desc=""/>
    <constraint exp="" field="SURFACE_TY" desc=""/>
    <constraint exp="" field="PRI_NAME" desc=""/>
    <constraint exp="" field="PRI_NOMREG" desc=""/>
    <constraint exp="" field="SEC_NAME" desc=""/>
    <constraint exp="" field="SEC_NOMREG" desc=""/>
    <constraint exp="" field="BRIDGE_TUN" desc=""/>
    <constraint exp="" field="BRIDGE_T_1" desc=""/>
    <constraint exp="" field="AUTHORITY" desc=""/>
    <constraint exp="" field="FOREIGN_ID" desc=""/>
    <constraint exp="" field="COMP_LEN" desc=""/>
    <constraint exp="" field="UFI" desc=""/>
    <constraint exp="" field="FMP" desc=""/>
    <constraint exp="" field="CREATED_ON" desc=""/>
    <constraint exp="" field="LIST_GUID" desc=""/>
    <constraint exp="" field="SHAPE_LEN" desc=""/>
  </constraintExpressions>
  <attributeactions>
    <defaultAction key="Canvas" value="{00000000-0000-0000-0000-000000000000}"/>
  </attributeactions>
  <attributetableconfig sortOrder="0" sortExpression="" actionWidgetStyle="dropDown">
    <columns>
      <column name="TRANSEG_ID" hidden="0" type="field" width="-1"/>
      <column name="TRANS_TYPE" hidden="0" type="field" width="-1"/>
      <column name="TSEG_FEAT" hidden="0" type="field" width="230"/>
      <column name="STATUS" hidden="0" type="field" width="-1"/>
      <column name="TRAFF_DIR" hidden="0" type="field" width="-1"/>
      <column name="TRAN_CLASS" hidden="0" type="field" width="-1"/>
      <column name="USER_TYPE" hidden="0" type="field" width="-1"/>
      <column name="TOUR_CLASS" hidden="0" type="field" width="-1"/>
      <column name="SURFACE_TY" hidden="0" type="field" width="-1"/>
      <column name="PRI_NAME" hidden="0" type="field" width="-1"/>
      <column name="PRI_NOMREG" hidden="0" type="field" width="-1"/>
      <column name="SEC_NAME" hidden="0" type="field" width="-1"/>
      <column name="SEC_NOMREG" hidden="0" type="field" width="-1"/>
      <column name="BRIDGE_TUN" hidden="0" type="field" width="-1"/>
      <column name="BRIDGE_T_1" hidden="0" type="field" width="-1"/>
      <column name="AUTHORITY" hidden="0" type="field" width="-1"/>
      <column name="FOREIGN_ID" hidden="0" type="field" width="-1"/>
      <column name="COMP_LEN" hidden="0" type="field" width="-1"/>
      <column name="UFI" hidden="0" type="field" width="-1"/>
      <column name="FMP" hidden="0" type="field" width="-1"/>
      <column name="CREATED_ON" hidden="0" type="field" width="-1"/>
      <column name="LIST_GUID" hidden="0" type="field" width="-1"/>
      <column name="SHAPE_LEN" hidden="0" type="field" width="-1"/>
      <column hidden="1" type="actions" width="-1"/>
    </columns>
  </attributetableconfig>
  <editform></editform>
  <editforminit/>
  <editforminitcodesource>0</editforminitcodesource>
  <editforminitfilepath></editforminitfilepath>
  <editforminitcode><![CDATA[# -*- coding: utf-8 -*-
"""
QGIS forms can have a Python function that is called when the form is
opened.

Use this function to add extra logic to your forms.

Enter the name of the function in the "Python Init function"
field.
An example follows:
"""
from qgis.PyQt.QtWidgets import QWidget

def my_form_open(dialog, layer, feature):
	geom = feature.geometry()
	control = dialog.findChild(QWidget, "MyLineEdit")
]]></editforminitcode>
  <featformsuppress>0</featformsuppress>
  <editorlayout>generatedlayout</editorlayout>
  <editable>
    <field editable="1" name="AUTHORITY"/>
    <field editable="1" name="BRIDGE_TUN"/>
    <field editable="1" name="BRIDGE_T_1"/>
    <field editable="1" name="COMP_LEN"/>
    <field editable="1" name="CREATED_ON"/>
    <field editable="1" name="FMP"/>
    <field editable="1" name="FOREIGN_ID"/>
    <field editable="1" name="LIST_GUID"/>
    <field editable="1" name="PRI_NAME"/>
    <field editable="1" name="PRI_NOMREG"/>
    <field editable="1" name="SEC_NAME"/>
    <field editable="1" name="SEC_NOMREG"/>
    <field editable="1" name="SHAPE_LEN"/>
    <field editable="1" name="STATUS"/>
    <field editable="1" name="SURFACE_TY"/>
    <field editable="1" name="TOUR_CLASS"/>
    <field editable="1" name="TRAFF_DIR"/>
    <field editable="1" name="TRANSEG_ID"/>
    <field editable="1" name="TRANS_TYPE"/>
    <field editable="1" name="TRAN_CLASS"/>
    <field editable="1" name="TSEG_FEAT"/>
    <field editable="1" name="UFI"/>
    <field editable="1" name="USER_TYPE"/>
  </editable>
  <labelOnTop>
    <field name="AUTHORITY" labelOnTop="0"/>
    <field name="BRIDGE_TUN" labelOnTop="0"/>
    <field name="BRIDGE_T_1" labelOnTop="0"/>
    <field name="COMP_LEN" labelOnTop="0"/>
    <field name="CREATED_ON" labelOnTop="0"/>
    <field name="FMP" labelOnTop="0"/>
    <field name="FOREIGN_ID" labelOnTop="0"/>
    <field name="LIST_GUID" labelOnTop="0"/>
    <field name="PRI_NAME" labelOnTop="0"/>
    <field name="PRI_NOMREG" labelOnTop="0"/>
    <field name="SEC_NAME" labelOnTop="0"/>
    <field name="SEC_NOMREG" labelOnTop="0"/>
    <field name="SHAPE_LEN" labelOnTop="0"/>
    <field name="STATUS" labelOnTop="0"/>
    <field name="SURFACE_TY" labelOnTop="0"/>
    <field name="TOUR_CLASS" labelOnTop="0"/>
    <field name="TRAFF_DIR" labelOnTop="0"/>
    <field name="TRANSEG_ID" labelOnTop="0"/>
    <field name="TRANS_TYPE" labelOnTop="0"/>
    <field name="TRAN_CLASS" labelOnTop="0"/>
    <field name="TSEG_FEAT" labelOnTop="0"/>
    <field name="UFI" labelOnTop="0"/>
    <field name="USER_TYPE" labelOnTop="0"/>
  </labelOnTop>
  <widgets/>
  <conditionalstyles>
    <rowstyles/>
    <fieldstyles/>
  </conditionalstyles>
  <expressionfields/>
  <previewExpression>TRANSEG_ID</previewExpression>
  <mapTip></mapTip>
  <layerGeometryType>1</layerGeometryType>
</qgis>
