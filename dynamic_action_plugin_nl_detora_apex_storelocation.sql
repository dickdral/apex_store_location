set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- ORACLE Application Express (APEX) export file
--
-- You should run the script connected to SQL*Plus as the Oracle user
-- APEX_050000 or as the owner (parsing schema) of the application.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_api.import_begin (
 p_version_yyyy_mm_dd=>'2013.01.01'
,p_release=>'5.0.3.00.03'
,p_default_workspace_id=>5853461301138549
,p_default_application_id=>1400
,p_default_owner=>'G2S_O'
);
end;
/
prompt --application/ui_types
begin
null;
end;
/
prompt --application/shared_components/plugins/dynamic_action/nl_detora_apex_storelocation
begin
wwv_flow_api.create_plugin(
 p_id=>wwv_flow_api.id(226028147102527198)
,p_plugin_type=>'DYNAMIC ACTION'
,p_name=>'NL.DETORA.APEX.STORELOCATION'
,p_display_name=>'Store Location'
,p_category=>'EXECUTE'
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_javascript_file_urls=>'#PLUGIN_FILES#apex_store_location.js'
,p_plsql_code=>wwv_flow_utilities.join(wwv_flow_t_varchar2(
'/*-------------------------------------',
' * APEX Store Location',
' * Version: 1.0 (22-09-2017)',
' * Author:  Dick Dral',
' *-------------------------------------',
'*/',
'FUNCTION render_store_location(p_dynamic_action IN apex_plugin.t_dynamic_action,',
'                               p_plugin         IN apex_plugin.t_plugin)',
'  RETURN apex_plugin.t_dynamic_action_render_result IS',
'  --',
'  -- plugin attributes',
'  l_result       apex_plugin.t_dynamic_action_render_result;',
'  --',
'  l_latitude_item   varchar2(100)  := p_dynamic_action.attribute_01;',
'  l_longitude_item  varchar2(100)  := p_dynamic_action.attribute_02;',
'  --',
'BEGIN',
'  --',
'  l_result.javascript_function := ''apex_store_location.doIt'';',
'  l_result.attribute_01        := l_latitude_item;',
'  l_result.attribute_02        := l_longitude_item;',
'  --',
'  RETURN l_result;',
'  --',
'END render_store_location;'))
,p_render_function=>'render_store_location'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_about_url=>'http://www.speech2form.com/ords/f?p=OPFG:STORELOCATION'
,p_files_version=>3
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(226028846589535325)
,p_plugin_id=>wwv_flow_api.id(226028147102527198)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>10
,p_prompt=>'Latitude Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_attribute(
 p_id=>wwv_flow_api.id(226029114579536999)
,p_plugin_id=>wwv_flow_api.id(226028147102527198)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>2
,p_display_sequence=>20
,p_prompt=>'Longitude Item'
,p_attribute_type=>'PAGE ITEM'
,p_is_required=>true
,p_supported_ui_types=>'DESKTOP:JQM_SMARTPHONE'
,p_is_translatable=>false
);
wwv_flow_api.create_plugin_event(
 p_id=>wwv_flow_api.id(226467483661659657)
,p_plugin_id=>wwv_flow_api.id(226028147102527198)
,p_name=>'location-retrieved'
,p_display_name=>'Location retrieved'
);
end;
/
begin
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2F2F20415045582053746F7265204C6F636174696F6E0A2F2F20417574686F723A204469636B204472616C20284465746F7261290A2F2F2056657273696F6E3A20302E310A2F2F20446174653A2053657074656D62657220323274682C20323031370A0A';
wwv_flow_api.g_varchar2_table(2) := '2F2F20676C6F62616C206E616D6573706163650A76617220617065785F73746F72655F6C6F636174696F6E203D207B0A0A6C617469747564655F6974656D203A2022222C0A6C6F6E6769747564655F6974656D3A2022222C0A764C6F6767696E67202020';
wwv_flow_api.g_varchar2_table(3) := '2020203A2022222C0A0A656E61626C655F6C6F6767696E673A2066756E6374696F6E2028290A207B20617065785F73746F72655F6C6F636174696F6E2E764C6F6767696E67203D20747275653B0A207D2C0A0A73746F72655F6C6F636174696F6E5F7661';
wwv_flow_api.g_varchar2_table(4) := '6C7565733A2066756E6374696F6E2820706F736974696F6E2029207B0A2020766172206C6174697475646520203D20617065785F73746F72655F6C6F636174696F6E2E746F466978656428706F736974696F6E2E636F6F7264732E6C6174697475646529';
wwv_flow_api.g_varchar2_table(5) := '3B0A2020766172206C6F6E676974756465203D20617065785F73746F72655F6C6F636174696F6E2E746F466978656428706F736974696F6E2E636F6F7264732E6C6F6E676974756465293B0A2020617065782E6974656D286C617469747564655F697465';
wwv_flow_api.g_varchar2_table(6) := '6D292E73657456616C7565286C61746974756465293B0A2020617065782E6974656D286C6F6E6769747564655F6974656D292E73657456616C7565286C6F6E676974756465293B0A202069662028617065785F73746F72655F6C6F636174696F6E2E764C';
wwv_flow_api.g_varchar2_table(7) := '6F6767696E67290A20207B20636F6E736F6C652E6C6F67282747656F204C6F636174696F6E3A272C706F736974696F6E293B207D0A20200A20202F2F207261697365206576656E742074686174206C6F636174696F6E20686173206265656E2072657472';
wwv_flow_api.g_varchar2_table(8) := '69657665640A202024282768746D6C27292E7472696767657228276C6F636174696F6E2D72657472696576656427293B0A7D2C0A2F2A20726F756E642076616C756520746F203620646563696D616C73202A2F0A746F46697865643A2066756E6374696F';
wwv_flow_api.g_varchar2_table(9) := '6E20282076616C756520290A7B0A20202076616C7565203D204D6174682E726F756E642876616C7565202A2031303030303030292F313030303030303B0A20202072657475726E20282076616C756520293B0A7D2C0A0A6765745F6C6F636174696F6E3A';
wwv_flow_api.g_varchar2_table(10) := '2066756E6374696F6E202820705F6C617469747564655F6974656D2C20705F6C6F6E6769747564655F6974656D20290A7B0A20206C617469747564655F6974656D20203D20705F6C617469747564655F6974656D3B0A20206C6F6E6769747564655F6974';
wwv_flow_api.g_varchar2_table(11) := '656D203D20705F6C6F6E6769747564655F6974656D3B0A0A20206E6176696761746F722E67656F6C6F636174696F6E2E67657443757272656E74506F736974696F6E28617065785F73746F72655F6C6F636174696F6E2E73746F72655F6C6F636174696F';
wwv_flow_api.g_varchar2_table(12) := '6E5F76616C756573293B20200A202020202020202020200A7D2C0A0A202020202F2F2066756E6374696F6E207468617420676574732063616C6C65642066726F6D20706C7567696E0A20202020646F49743A2066756E6374696F6E2829207B0A20202020';
wwv_flow_api.g_varchar2_table(13) := '202020202F2F20706C7567696E20617474726962757465730A202020202020202076617220646154686973203D20746869733B0A2020202020202020766172206C617469747564655F6974656D2020203D206461546869732E616374696F6E2E61747472';
wwv_flow_api.g_varchar2_table(14) := '696275746530313B0A2020202020202020766172206C6F6E6769747564655F6974656D20203D206461546869732E616374696F6E2E61747472696275746530323B0A20202020202020202F2F204C6F6767696E670A202020202020202069662028617065';
wwv_flow_api.g_varchar2_table(15) := '785F73746F72655F6C6F636174696F6E2E764C6F6767696E6729207B0A202020202020202020202020636F6E736F6C652E6C6F67282753746F7265204C6F636174696F6E3A206C617469747564655F6974656D203D272C206C617469747564655F697465';
wwv_flow_api.g_varchar2_table(16) := '6D293B0A202020202020202020202020636F6E736F6C652E6C6F67282753746F7265204C6F636174696F6E3A206C6F6E6769747564655F6974656D3D272C206C6F6E6769747564655F6974656D293B0A20202020202020207D0A20202020202020206170';
wwv_flow_api.g_varchar2_table(17) := '65785F73746F72655F6C6F636174696F6E2E6765745F6C6F636174696F6E286C617469747564655F6974656D2C6C6F6E6769747564655F6974656D293B0A202020207D0A7D3B0A';
null;
end;
/
begin
wwv_flow_api.create_plugin_file(
 p_id=>wwv_flow_api.id(226028473073531685)
,p_plugin_id=>wwv_flow_api.id(226028147102527198)
,p_file_name=>'apex_store_location.js'
,p_mime_type=>'application/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
end;
/
begin
wwv_flow_api.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false), p_is_component_import => true);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
