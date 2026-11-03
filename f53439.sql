prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2026.04.07'
,p_release=>'26.2.1'
,p_default_workspace_id=>9972127768257338940
,p_default_application_id=>53439
,p_default_id_offset=>0
,p_default_owner=>'WKSP_FBDG102026'
);
end;
/
 
prompt APPLICATION 53439 - Wheels Alpes
--
-- Application Export:
--   Application:     53439
--   Name:            Wheels Alpes
--   Date and Time:   04:47 Tuesday November 3, 2026
--   Exported By:     IVAN
--   Flashback:       0
--   Export Type:     Application Export
--     Pages:                     20
--       Items:                   57
--       Validations:              4
--       Processes:               20
--       Regions:                 39
--       Buttons:                 21
--     Shared Components:
--       Logic:
--         Build Options:          1
--       Navigation:
--         Lists:                  2
--         Breadcrumbs:            1
--           Entries:             17
--       Security:
--         Authentication:         2
--         Authorization:          3
--       User Interface:
--         Themes:                 1
--         Templates:
--         LOVs:                   6
--       PWA:
--       Globalization:
--       Reports:
--       E-Mail:
--     Supporting Objects:  Included
--   Version:         26.2.1
--   Instance ID:     63113759365424
--

prompt --application/delete_application
begin
wwv_flow_imp.remove_flow(wwv_flow.g_flow_id);
end;
/
prompt --application/create_application
begin
wwv_imp_workspace.create_flow(
 p_id=>wwv_flow.g_flow_id
,p_owner=>nvl(wwv_flow_application_install.get_schema,'WKSP_FBDG102026')
,p_name=>nvl(wwv_flow_application_install.get_application_name,'Wheels Alpes')
,p_alias=>nvl(wwv_flow_application_install.get_application_alias,'WHEELS-ALPES')
,p_page_view_logging=>'YES'
,p_page_protection_enabled_y_n=>'Y'
,p_checksum_salt=>'A4031FAFD327C0ED3CE2B30FD9EA553B562E607DCDF4A13E71154B9176DD52CA'
,p_bookmark_checksum_function=>'SH512'
,p_compatibility_mode=>'26.1'
,p_flow_language=>'en'
,p_flow_language_derived_from=>'FLOW_PRIMARY_LANGUAGE'
,p_allow_feedback_yn=>'Y'
,p_date_format=>'DS'
,p_timestamp_format=>'DS'
,p_timestamp_tz_format=>'DS'
,p_flow_image_prefix=>nvl(wwv_flow_application_install.get_image_prefix,'')
,p_authentication_id=>wwv_flow_imp.id(10449359879671227735)
,p_application_tab_set=>0
,p_logo_type=>'T'
,p_logo_text=>'Wheels Alpes'
,p_proxy_server=>nvl(wwv_flow_application_install.get_proxy,'')
,p_no_proxy_domains=>nvl(wwv_flow_application_install.get_no_proxy_domains,'')
,p_flow_version=>'Release 1.0'
,p_flow_status=>'AVAILABLE_W_EDIT_LINK'
,p_browser_cache=>'N'
,p_browser_frame=>'D'
,p_authorize_batch_job=>'N'
,p_rejoin_existing_sessions=>'N'
,p_csv_encoding=>'Y'
,p_substitution_string_01=>'APP_NAME'
,p_substitution_value_01=>'Wheels Alpes'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'SARA'
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_app_file_prefix,'')
,p_files_version=>2461347061241
,p_version_scn=>'15852768299270'
,p_print_server_type=>'INSTANCE'
,p_file_storage=>'DB'
,p_is_pwa=>'Y'
,p_pwa_is_installable=>'N'
,p_pwa_is_push_enabled=>'N'
,p_theme_id=>42
,p_home_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_login_url=>'f?p=&APP_ID.:LOGIN:&APP_SESSION.::&DEBUG.:::'
,p_theme_style_by_user_pref=>false
,p_built_with_love=>false
,p_global_page_id=>0
,p_navigation_list_id=>wwv_flow_imp.id(10096211308190611925)
,p_navigation_list_position=>'SIDE'
,p_navigation_list_template_id=>2471166859590295591
,p_nav_list_template_options=>'#DEFAULT#:t-TreeNav--styleA:js-navCollapsed--hidden'
,p_nav_bar_type=>'LIST'
,p_nav_bar_list_id=>wwv_flow_imp.id(10096212127580611929)
,p_nav_bar_list_template_id=>2850970698196720012
,p_nav_bar_template_options=>'#DEFAULT#'
);
end;
/
prompt --application/plugin_settings
begin
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096206018446611916)
,p_plugin_type=>'DYNAMIC ACTION'
,p_plugin=>'NATIVE_OPEN_AI_ASSISTANT'
,p_version_scn=>'SH256:NcagEyRP_F17oe14bnrSYSYienkBgpdRSvH17g_NxoE'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096206313638611917)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_COLOR_PICKER'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'mode', 'FULL')).to_clob
,p_version_scn=>'SH256:FJR60MFzlfEjx0PvnpYBK4631rNeUHXaF3eGFKxcTgE'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096206680321611918)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_DATE_PICKER_APEX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'show_on', 'FOCUS',
  'time_increment', '15')).to_clob
,p_version_scn=>'SH256:dQTHqehcDG0h-d-qmHe5lf-DuViElEHDw9zMkscLr6M'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096206949741611918)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_GEOCODED_ADDRESS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'background', 'default',
  'display_as', 'LIST',
  'map_preview', 'POPUP:ITEM',
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:CU9J9l4sUtY-UffjdBCosfDW6ER-I0swXpw8GekLiYQ'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096207235858611919)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SELECT_MANY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_values_as', 'separated')).to_clob
,p_version_scn=>'SH256:jJTPfH8wphTXe7ahDytF6PbWlPl1mXrDRYylCDda0k0'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096207583554611919)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_SINGLE_CHECKBOX'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N')).to_clob
,p_version_scn=>'SH256:oAqKgc-cSRXHDMjfwwNIgo78WqYXKjQz8MWGBG6Euj0'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096207887331611920)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_STAR_RATING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'default_icon', 'fa-star',
  'tooltip', '#VALUE#')).to_clob
,p_version_scn=>'SH256:uT4QhQbZQY61UFxAGl7ieo2urrCo8jUsFNprrg7lGHo'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096208179446611920)
,p_plugin_type=>'ITEM TYPE'
,p_plugin=>'NATIVE_YES_NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_style', 'SWITCH_CB',
  'off_value', 'N',
  'on_value', 'Y')).to_clob
,p_version_scn=>'SH256:wAjuCAsVhoIbbuKGWTMQ__Rd_YS_sY9KgWhpqOO11mc'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096208446561611920)
,p_plugin_type=>'PROCESS TYPE'
,p_plugin=>'NATIVE_GEOCODING'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'match_mode', 'RELAX_HOUSE_NUMBER')).to_clob
,p_version_scn=>'SH256:GIeRbUJQ8yKfen6-dFvkghmSUZXFoUAXCCTNRhCJgh0'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096208748020611921)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_DISPLAY_SELECTOR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'include_slider', 'Y')).to_clob
,p_version_scn=>'SH256:4M27aN0U-JyQ0prILtI8ITLXOphqUdO-xWNcwkSL1SI'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096209032429611921)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_IR'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'actions_menu_structure', 'IG',
  'auto_ir_reset_button', 'Y')).to_clob
,p_version_scn=>'SH256:TC1mqO_n1hWvorH6XHVejgQzJq9VjDsWoq0rKaIQUNo'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096209310676611922)
,p_plugin_type=>'REGION TYPE'
,p_plugin=>'NATIVE_MAP_REGION'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_vector_tile_layers', 'Y')).to_clob
,p_version_scn=>'SH256:vJP7K77hiNj1R2RE6dHVyRAhlmxDg6KGn4yRE20J9Qw'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096209634401611922)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_ADFBC'
,p_version_scn=>'SH256:fiSZ-OfcUl-d0e0dtJUYffG7q61xKsHlomsv7ZU1BMw'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_plugin_setting(
 p_id=>wwv_flow_imp.id(10096209945257611922)
,p_plugin_type=>'WEB SOURCE TYPE'
,p_plugin=>'NATIVE_BOSS'
,p_version_scn=>'SH256:dRkCWi6vQMhdQUSqb0QlRls9iYcsZ93IPYrbTqFqJFE'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_bar
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10096212127580611929)
,p_name=>'Navigation Bar'
,p_static_id=>'navigation-bar'
,p_version_scn=>'SH256:vnb1-G39r80BPE-5P2Enpuf0sMSVvBeNQDVbFiNwRto'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10096225486231611982)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'&APP_USER.'
,p_static_id=>'app-user'
,p_list_item_link_target=>'#'
,p_list_item_icon=>'fa-user'
,p_list_text_02=>'has-username'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10096226072426611983)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'---'
,p_static_id=>'list_item'
,p_list_item_link_target=>'separator'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10096225486231611982)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10096226568796611984)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Sign Out'
,p_static_id=>'sign-out'
,p_list_item_link_target=>'&LOGOUT_URL.'
,p_list_item_icon=>'fa-sign-out'
,p_list_item_disp_cond_type=>'USER_IS_NOT_PUBLIC_USER'
,p_parent_list_item_id=>wwv_flow_imp.id(10096225486231611982)
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/lists/navigation_menu
begin
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(10096211308190611925)
,p_name=>'Navigation Menu'
,p_static_id=>'navigation-menu'
,p_version_scn=>'SH256:n5p7mOC6gLe5Rcso__tCGWcdafGrl-kCQT-TvdZb_Y0'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044630Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10484701144783351465)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Actualizar estado viaje'
,p_static_id=>'actualizar-estado-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'29'
,p_created_on=>wwv_flow_imp.dz('20261103044630Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044630Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10472933327742445207)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'Buscar viajes'
,p_static_id=>'buscar-viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'50'
,p_created_on=>wwv_flow_imp.dz('20261103035814Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035814Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10484250376348714703)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Cancelar solicitud'
,p_static_id=>'cancelar-solicitud'
,p_list_item_link_target=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'52'
,p_created_on=>wwv_flow_imp.dz('20261103044309Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044309Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10097955114119653931)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'Conductor'
,p_static_id=>'conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-car'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261102061941Z')
,p_updated_on=>wwv_flow_imp.dz('20261103041830Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10482657470730304699)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Gestion pasajeo'
,p_static_id=>'gestion-pasajeo'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'41'
,p_created_on=>wwv_flow_imp.dz('20261103043842Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043842Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10484482697792730718)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Gestionar solicitudes'
,p_static_id=>'gestionar-solicitudes'
,p_list_item_link_target=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table-pointer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'27'
,p_created_on=>wwv_flow_imp.dz('20261103044549Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044549Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10484602753018342518)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Historial de viajes'
,p_static_id=>'historial-de-viajes'
,p_list_item_link_target=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'25'
,p_created_on=>wwv_flow_imp.dz('20261103044500Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044500Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10483225414006318517)
,p_list_item_display_sequence=>150
,p_list_item_link_text=>'Historial viaje'
,p_static_id=>'historial-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:80:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-table'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'80'
,p_created_on=>wwv_flow_imp.dz('20261103044100Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044100Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10096222888513611976)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_static_id=>'home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10098199336302280195)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Pasajero'
,p_static_id=>'pasajero'
,p_list_item_link_target=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261102062117Z')
,p_updated_on=>wwv_flow_imp.dz('20261103041846Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10472544450074045354)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_list_item_link_target=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'21'
,p_created_on=>wwv_flow_imp.dz('20261103035529Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035529Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10447311583243662793)
,p_list_item_display_sequence=>60
,p_list_item_link_text=>'Registrar conductor'
,p_static_id=>'registrar-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_parent_list_item_id=>wwv_flow_imp.id(10097955114119653931)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
,p_created_on=>wwv_flow_imp.dz('20261103014750Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014750Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10470819515683992268)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'Registrar vehiculo'
,p_static_id=>'registrar-vehiculo'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_parent_list_item_id=>wwv_flow_imp.id(10097955114119653931)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
,p_created_on=>wwv_flow_imp.dz('20261103034638Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034638Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10454518614400429769)
,p_list_item_display_sequence=>90
,p_list_item_link_text=>'rfa1-dashboard-conductor'
,p_static_id=>'rfa1-dashboard-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:130:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'130'
,p_created_on=>wwv_flow_imp.dz('20261103021253Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021253Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10459402107020529539)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'rfa2-dashboard-usuario'
,p_static_id=>'rfa2-dashboard-usuario'
,p_list_item_link_target=>'f?p=&APP_ID.:140:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'140'
,p_created_on=>wwv_flow_imp.dz('20261103022930Z')
,p_updated_on=>wwv_flow_imp.dz('20261103022930Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10425872253952785614)
,p_list_item_display_sequence=>50
,p_list_item_link_text=>unistr('RFC1 \2013 Demanda por localidad')
,p_static_id=>'rfc1-demanda-por-localidad'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'100'
,p_created_on=>wwv_flow_imp.dz('20261102232138Z')
,p_updated_on=>wwv_flow_imp.dz('20261102232138Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10447646000740694254)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'rfc2-ingresos-por-localidad'
,p_static_id=>'rfc2-ingresos-por-localidad'
,p_list_item_link_target=>'f?p=&APP_ID.:110:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'110'
,p_created_on=>wwv_flow_imp.dz('20261103015304Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015304Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10453151669719359308)
,p_list_item_display_sequence=>80
,p_list_item_link_text=>'rfc3-viajes-por-conductor'
,p_static_id=>'rfc3-viajes-por-conductor'
,p_list_item_link_target=>'f?p=&APP_ID.:120:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-file-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'120'
,p_created_on=>wwv_flow_imp.dz('20261103020108Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020108Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10484534793246338013)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_list_item_link_target=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-forms'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'51'
,p_created_on=>wwv_flow_imp.dz('20261103044415Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044415Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(10098227523966282779)
,p_list_item_display_sequence=>40
,p_list_item_link_text=>'Tableros'
,p_static_id=>'tableros'
,p_list_item_link_target=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-bar-chart'
,p_list_item_current_type=>'TARGET_PAGE'
,p_created_on=>wwv_flow_imp.dz('20261102062143Z')
,p_updated_on=>wwv_flow_imp.dz('20261103041902Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/listentry
begin
null;
end;
/
prompt --application/shared_components/files/icons_app_icon_144_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000090000000900806000000E746E2B800001000494441547801EC5D0B701CC599FE7BF6A9B756B664C9367E62233F8080EDF3130C29E72097030ACB36D884C3B95CFC481D57A4EEA8545DEAEA72577755B9DC';
wwv_flow_imp.g_varchar2_table(2) := '91239080EC908410B0AC978D71828B22D8B2C1C6C6801FC23C5CC631C64FD97A58D26ADFD3F9FF1E49C8F6AEB49A99D56A677A6B7ABAA7BBFFFFEFFEFE4FDD3D3DB32B05E44722600001492003E04951004920C9024308480219824F0A4B02490E184240';
wwv_flow_imp.g_varchar2_table(3) := '12C8107C5258124872C01002BA0964C8AA14B60C0292409671657A3A2209941EDC2D635512C832AE4C4F472481D283BB65AC4A0259C695E9E98824507A70B78CD5A1275012D07DF3F1D73DCBBF5F93BBFCBB354518972E5F5333EEA1355B277F7BFDB69B';
wwv_flow_imp.g_varchar2_table(4) := 'EC10A8AFCBB1CFA2EF1A06B9844912D00D7995341388B3956BEACA57AEAF7B6CD5BAFAE756ADAB7B7FD5DABAB02F1208BA544787CBE568C6F8BC4B717CE150D4132A8F7E6A87407DA53E8BBE6B18741026840D61B4726DFD2F0933C20E80B321674D1F83';
wwv_flow_imp.g_varchar2_table(5) := '434AA0E5DFA9297E787DFDFDABD6D5FF378637118856A6B04F18672F629BD603B059C0980BE4273E02021B368B31F83E6146D8118602CB7575FFB5726DDD7D346AC7174E4DEE1012883397DBB98071FE43ECCABF6258C2182BC0581E0610E8C6700903F6';
wwv_flow_imp.g_varchar2_table(6) := '234CFFD0ED722E18CA5129E5045AB3E67DD7C3EBEABEB772ED964F81F157B1A3D841038849D1FE1058C8816FC711E993556BEBBF4BD8F757D98CB2941268F9BA9A319DCAA97715601B1983A9663458EA48060176133078A1839DDAB71C970DC948E8ADA3';
wwv_flow_imp.g_varchar2_table(7) := 'E8151C48EE91B5AF4E77827200685D03F2930E041863B39D6EC7BB2BBF57372355F65342A0956BB62C5221BA0FA7AB31E6355C6AD2830063301914D8BB72FD96C57AE40792319D4034F230C6DF6072813C10F643564EBE602A7F3D152391A904BA6FCDF6';
wwv_flow_imp.g_varchar2_table(8) := '6C0ED15A60903D64E84843C921403E51A09A7C949C4072B54C2550AE127A0E189B9E9C69596BA811C0916886F09189864D2310DE3AAEC635CF6326B64DAA4A0102E423F29559AA4D21D0F21FD464E1E6D5CFCC6A94D4935A0438E74F9935959942204797';
wwv_flow_imp.g_varchar2_table(9) := '82230FF3A5B6DB52BB590830C68A7258E8EFCCD0670281383E92812760F87E64CBE2208024FA279C35589CA241651926D0CAB55BEF01C09D4F909F4C420099334DF39DB1561B2610EEF9C8D1C7980FD2266D86EF0C1168F5EA5D5E1C06BF913604A46183';
wwv_flow_imp.g_varchar2_table(10) := '08F06F683740FAD5182250D07B791E0033A403E4278D0830C51160738D34C090F31930249011F35236DD0818F5A131027190044A37030CDA67067D6880401CC9CB16196CFFB016B743E3B8C1594437811E797C471E023C02833C321801C660D4A38FBE91';
wwv_flow_imp.g_varchar2_table(11) := 'A3B70BBA0914F34772F51A9572C30B81882BA8FBDD74DD0402B7EA1E5E30C8D6E84540C98ABA74CBEA16E431DD46F5DA9472294220CA750F06BA4720AE826EA3298241AAD58900E7E0D0290ABA09A432E6D16B54CA0D3304D24120065C4E6189789061F9';
wwv_flow_imp.g_varchar2_table(12) := 'DCA17F36D13D020147B360ED4F97BF052858BB97D83B03CB11DD04723815154D5BF6E86CBF08C1AE5611286DD98E1AEC986E0219B43BACC53BAE5C8070A8138A8B4788406949A2F82E9304BA0697F6B6731009FBC1E72B800573678AE0F3150A42755C39';
wwv_flow_imp.g_varchar2_table(13) := '7F4D6D792909D487039D1D4D108D04202F2F17EE987F2B381D0E1116CDBF19F2F37391585D4075FA88D83E2909D44D8140571B84831D9093930D8B17DE062E97B3BB04C0ED72C19D0B6E1365542718B8D25B66F784241032201CF243C0DF0CDE2C0FDCB5';
wwv_flow_imp.g_varchar2_table(14) := 'E876F078AEDFA1A03C2296D7EB81AECECB62344251938FCC53677B02A96A0CFC387591EB16CDFB1A78BD8937D8B390600BE6DE4A55A1B3BD0948565CD8F8647B02D1DD15C7E732E5E593A1207FE0B71A7C85B970D3D489B80D46C4BB6463EA685DB73581';
wwv_flow_imp.g_varchar2_table(15) := '42B8E6E95934CFB869BC864812E719E51370A19D83D3981FC278BB9F848865ABD8964034FDF83BB51164EEECC1FDFE12630CE6CE9E2948E1EFB88CA3912AD2763CD99640017C4C819E87E9494E5DD79283A63B9AF6388FE102BCF5DA62DB5CDB9240B168';
wwv_flow_imp.g_varchar2_table(16) := '1842C17670BBDD307244015C6E6ED7158A8BF2C52D7E30D006B158C436A4E9DB515B12A80B6FD9098470380C7BF67E08BBDF795F57787BDF21084734E204684423A5E90969B36A3B02D1E8130977C18471A5F0C843779912C68F1B2516D36A2C9A3647A6';
wwv_flow_imp.g_varchar2_table(17) := 'CBB0ED0814ECDE457EE05B73A0E2BEDB4C09F77F738EF05F10A74591B0D1C95604A2FD9E50A803DDCB60DEEC09189B73CC9F33111531B1AEC284AD0E5B112814EC04BAF35AB460063EAEF8EA5997518F7BBD4E7C6A3F0D38EE6A87F1B188517D99246F2B';
wwv_flow_imp.g_varchar2_table(18) := '02D16B1AE49CC50BCB294A18BA0211A8DDF621FCDFB36F8850F7DA21A0BC84025870E7C26978060887FD22B6CBC93604E29CE3CE71007273B260D6AD3724F4EFE9B36DF0F893BF83AADADDB0EFC0C7226CAA69107967CEB52594FBABDBC74176B60722A1';
wwv_flow_imp.g_varchar2_table(19) := 'AE8475AC58601B0245F0CE0BE72FB86381B6839CC8994F3DFB47686DEB842577CF82F5FFF02D11BEBEF87691F7D42F5E4F2426F217CD9F09B4B1188D04C575269C8CB6D13E048A040456772C982AE278A7C68FCFC397679A60FEBC1970EB4C1C51B2DC90';
wwv_flow_imp.g_varchar2_table(20) := '8DE1B65BC6C39CDBCBE18BD317E1E3CF2EC613157977CCD77447BA6D894C8B9F6C4320DAFF215F964F29A1286E387DA645E497961488B8EF6964B196F7E559AD4EDFB29EF494C9C522D9634B5C58FC64230285C413F4FEFC59909F258A83C1EB370463B1';
wwv_flow_imp.g_varchar2_table(21) := '9828CBCDF18A38DEC9ED72404EB6172481E2A193C179F4E49D731546F8F2FAEDC5D4C9DAE874F4D89F211CD1084302943E7CF42426194C9B3A0AE3C44761612EC46CF45CCC162390DAED509F2F37B1E7B1A4A438171EAAB813CE9E6D82DFFCFE4D786BF7';
wwv_flow_imp.g_varchar2_table(22) := '311128DDD4D40CF4E8A3C8978D35131F23F0012B00B70D896C41201A7DC8E545038C4054E7A10767C1EA6F2F01BF3F08878F1E1781D2DF7974093EF6F81A55E937F87004A20A5CB5C73B42B62290AF70E05756C9F9F7DF7B336C79F90978FA27ABE1999F';
wwv_flow_imp.g_varchar2_table(23) := 'FE3D54FFF671B8EF9E9BA968C0D04B20FED51438A0502656E86EB34D08C44577932590A88CA771637D30767401B870718C97491D3E9F4652151F6B242590E1956C45201577A353ED2F85B1549B1856FA6D4120C634A7B6B6A6FE39554B2B3EB0451733A6';
wwv_flow_imp.g_varchar2_table(24) := 'D9C4A4A50F9B1048EB263DA248B5377B6C309BFC80BF866CAA514DB37E45D15EDDE8716E2A9BD33B02298E549A1936BA6D41A060407B8ADED2A24D2FA944FF724BBB501FECD26C8A0B0B9F2C4F20FAE669B8FBCB7FAD6DF43662F2DEFCE893F370ECD30B';
wwv_flow_imp.g_varchar2_table(25) := 'C90B60CDD656CD06D924DB9865E963F004CA20387A7E286ACCE852282D2D868ECE2E6869ED4ABA07CF54EE000AC90A5C6AF643201082B2B212209B7620916509443F06456F20969596C0BC39D3A16C94F65F198E1C3B9B2C1F2086BBC9B141ECE71CF9E8';
wwv_flow_imp.g_varchar2_table(26) := '8CD05D86641536D1369188882C0A2C78B22481C861F4025949F108A05F1923BF95958EA4088E347E21E2549C0E1F3D25D48E1EE51331D9A6361091A94D22D36227CB1128D0D50AE4B091237D307FEE578F1FB2BC6E28C8CF830F0F9F48990B3F387242D8';
wwv_flow_imp.g_varchar2_table(27) := 'F078DCBD36E6CF9D09454585A24DD4B6DE028B242C45A0683424BEA7EE45B22C40F2381D5777AF1447A14E7F004E9E6A36DD7DC73FBF04A16018CA46975CA5DBE970C0C2793783D7E3116D8B45C3579567FAC5D50867706F383EA6D0EE7A38CC9D730BB8';
wwv_flow_imp.g_varchar2_table(28) := '9CDADE4FDF2E95F6AC83BAD72A7DCB8CA68F7CF4A55051565224E2BE27B7CB057366D12F8070D0DAD8B734B3D39621503412047AEFA7B0B000468A7772AE770CE5BB5C4E786BCFD1EB0B0DE6BCD570044877518257464A8A0BC5F4168B8581DA6AD0DCB0';
wwv_flow_imp.g_varchar2_table(29) := '111F4202A5B6CFB1EE97C68A4716F66B68E2841BE0DCB9CBB0F700BD61D86FD5A40B77EF3B014D97DAE0C649E3FA95291EA92DAE7BDADA6FE50C29B40C815455FB958CE2119A9312E13FF5C6B1A0E0DAA8AA7E6FA22A83CEAFAA7B478C3E53268FED57B6';
wwv_flow_imp.g_varchar2_table(30) := 'B89BDC9240FDC2949E428E7B3664D99BEDA12861F0B85D503E75921885DE3DA8DD7627AC9C44C13BFB4F4253532BEA9C2848D49F4856B6F6D23E7D05BABF7A9954669911A81774EDDDB1DECB78892993C680DBE5869AADFBE2150F2A6F338E641EBCC39A';
wwv_flow_imp.g_varchar2_table(31) := '3471CCC072B8D01FB85266D5B01E8192C0DFE974C0F46993C41705DFFBE0741212F1ABEC7BEFCF70EEFC65985E3E099C382DC6AF65ED5C5B12885C3A69421978BC1EF8D54B6F82DF3FF8BD199279E1A53F8137CB0313C797924A5B06EB118825E7C7584C';
wwv_flow_imp.g_varchar2_table(32) := '856C245073733BFCEF2F762427D4A7D64F9FD9016D6D9DB841E805D2D5A72871D2826F29660281123B44674910778C1BDEFE105ADBDA8131058E369E84FAED8793D656BDF503683C761218CAB6B55D01D2453A075420D740034294FE0A032CA23B3A03B8';
wwv_flow_imp.g_varchar2_table(33) := '917810AEB47780DB9B070545E340519CF04AF52EF8E478D380EDA7F783AAEBF708990294251DA4EBAD3D07A1031F930CA8C06215AC3702F53385D1DB823B771F84602004593945909B57824470406EBEB686F9C9CFB6C2E5167F4217375DEA84FFF9FF57';
wwv_flow_imp.g_varchar2_table(34) := '4539C9280ACAA20ED2453A77A1EE96EE17CA44251B9CAC47A0044E3B8B774BBBDF7E1FA2D1281266146465FB7A6B3A5D1EBC2E828ECE2EF8E71FBD022FD7BC8753DA21080443D08564ABDF7E48E43DF96F2F033D8C25C2904C8F02D29583448A44A2B00B';
wwv_flow_imp.g_varchar2_table(35) := '4722B2D55366F5D87A048A33851DFFFC0CEC7FEF2830A6405EE168707BAEFF8E7C568E0FBC48AA8E0E3F6C796D2F4E690D3852854578A5BA41E475E0F44775883070CDC7E3CD833CD44D36C8D68993C9BFB80619FCB11E81AE99C20E379E80C68F8E8382';
wwv_flow_imp.g_varchar2_table(36) := 'EB9CFCC231B85BACED06C7F359364E6B85232600D5CB2B180D8C398061A0743ECA5219D589274B792E5796906538B51D69FC0CC836E55B39588F40DDDE0A8523B0777F237C7EF234389C1EC8F78DC5F8AB17BD20C187D6354E97175C6E241A911103A529';
wwv_flow_imp.g_varchar2_table(37) := '8FCA1288F5663B9C6E28F0DD80B63CC2F6DE038D406D1115181391954E9623D0CE5D07A07EDB4EF8C38EB7E1C2C54B407749347A24E37CB31C4BB6F2713AA3A9F2C2854BA22DD4A69D0D07CC32316CF45886403442F404973B1B3CDE7CA0A9271717B78C';
wwv_flow_imp.g_varchar2_table(38) := 'E9FBCB77BB73C08D418FB7185320377F14501BA82D4E9CDE9C38B2F5043D3A87A38C6E024563101E4E1DA2456C3EAE5328E41594414E5EB1360D196824E9A06040856803E9C8C71129BFBB7DD456233A4D9755F4FB52378114CE43A677442A4C0B02CCC0';
wwv_flow_imp.g_varchar2_table(39) := '60A09B4038420FAB11282DC85BC4A8115FEA2690CA1C118BE027BBE164BA0703DD0482B0A2DBA8F4D8F042400D38750F06BA0914E321DD4687177C715A63B32CE6D43F18E826903B37572EA22D4234C5E3D03D9BE82650F842A71F38B7CF7F15B10859AE';
wwv_flow_imp.g_varchar2_table(40) := 'EB06FA50F8F2BA82E4327413A8B676458C3366BDADD5E470B34C2DF221F9526F877413880CE2FE6E03C532642E02467D6888402AA8924099CB1DD172A33E3444206F70E47EB90E127EC8CC13AE7F840F0DB4DE10815E7CF16E5C44B36D06EC5B4C34D3BA';
wwv_flow_imp.g_varchar2_table(41) := 'C3B6693ED4DF6E430422B3B80DFE34C532641E0266F8CE30815E79BE623FE75CDE8D65187FC867E43BA3CD364C206A00638A1C8508880C0A66F94C31A3CFE74A7D75C0E18C19BAA48ED423C0819F153E33C19429046AF8F1DD5100F68F203F99810087F5';
wwv_flow_imp.g_varchar2_table(42) := '9ACF8C37D714025133366D58BA0DE7D59F535A86E18B00F9A86AC3B2ED66B5D034025183F27F2AD7970000026C49444154F88427313E88411E834360486AE3D4D5D0ED23D3EC994AA08D1B6747545056E07AA8CDB4164A45A620C0395C84A8EB61F29129';
wwv_flow_imp.g_varchar2_table(43) := '0ABB95984A20D2B9B9F2C1532AE35FE700A7407E860B025FA8C0EEA97AE1818B6637C87402510337572E3BE472B0D998FE130679A41101FC43DEE974B059D51B961E4945335242206AE84BBF5CDA1C698EDD8BCFCA2AE95A86A14700C9F354B439F6D7E4';
wwv_flow_imp.g_varchar2_table(44) := '8B54594F1981A8C1F49EC9A60DCBD6AB9CAFC7D5BFEEB7DE48970CC923808BE580CAE1E1AACA8A7F211F242F39F89A2925504F73366F58561965EA2424D1BFE35FC5973DF9323619016D33F7C75150A76CDE50516DB2F6B8EA86844064B9B672C559DC7F';
wwv_flow_imp.g_varchar2_table(45) := 'F84F1C5227AA004B31EF0DBC33403E614A1EBA11C03FCA1886EDAA0A7F1B69894DD85459F11F84B56E8583141C3202F5B48B86D4CD95155BB1A3F74679CC071C1603E74F70E0BFC3B8111985BBDA3DB565DC1701810DE78DF887F71257E1079CB1BBFC11';
wwv_flow_imp.g_varchar2_table(46) := '970FFF30EFDFBCB1E28F846DDFFA43911E7202F5ED54EDC61557366DA8D883EBA49F57552E5B8DF12D386FBB5A5D59DE8812CB8B446223302E8BA8B1F13155B95161CE723B04EA2BF559F45DC3208F30216C04461B2A1EABDA58F174D5F34B77BFF69B07';
wwv_flow_imp.g_varchar2_table(47) := '3A208D9FB4122851BF773CFB37A1DAE75674D6FE7A450BC6179068A7AB373EF8F9CBCF3FF0991D02F595FA2CFAAE61D0499824C22B9DF9C39240E90444DA1E1C02924083C34BD6BE060149A06B0091978343401268707859A7B6493D9104320948BBAA91';
wwv_flow_imp.g_varchar2_table(48) := '04B2ABE74DEAB724904940DA558D24905D3D6F52BF25814C02D2AE6A2481ECEA7993FA2D09641290F65173754F2581AEC6435E0D120149A0410226AB5F8DC05F000000FFFF6AB96AC20000000649444154030004850F99D0B5127D0000000049454E44AE';
wwv_flow_imp.g_varchar2_table(49) := '426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10096213569118611933)
,p_file_name=>'icons/app-icon-144-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_192_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000000C0000000C0080600000052DC6C0700001000494441547801EC5D7B6C1CC779FFF6481EEFF838F278A424BE694BA25EB464BDACC4725D3B899B0405DCBA416320350A274051BB28FC4711A44051B4401BB4';
wwv_flow_imp.g_varchar2_table(2) := '488ADA685AA749DCFA91C689103BB0613B4E64EB65C9B2ADF79B922C5BD68B14294A111FC7BB23EFD5F9666F6797E4DDEDEDDDDEDDEEED277176BF99F9E69B6F7E33BFDDD9D9C7B9BEF1C4AF92140803A78E0117D03F42C0C10810011CDCF9D474002200';
wwv_flow_imp.g_varchar2_table(3) := '8D02472340047074F753E31D4C00EA7C4280A64034061C8E009D011C3E009CDE7C2280D34780C3DB4F0470F800707AF389004E1C01D466810011404041821311200238B1D7A9CD02012280808204272240047062AF539B050244000105094E40607E1B89';
wwv_flow_imp.g_varchar2_table(4) := '00F311A1B8A310200238AABBA9B1F3112002CC4784E28E428008E0A8EEA6C6CE478008301F118A3B0A010711C051FD4A8DCD110122408E40915A65224004A8CC7EA556E58800112047A048AD321120025466BF52AB72448008902350B65623E733224004';
wwv_flow_imp.g_varchar2_table(5) := 'C8080D653801012280137A99DA9811012240466828C3090810019CD0CBD4C68C081001324243199580805E1B88007A08517E45234004A8E8EEA5C6E9214004D04388F22B1A01224045772F354E0F0122801E42945FD1085430012ABADFA8712621400430';
wwv_flow_imp.g_varchar2_table(6) := '094832634F048800F6EC37F2DA2404880026014966EC890011C09EFD465E9B840011C024202D65869CC919012240CE50916225224004A8C45EA536E58C00112067A848B1121120025462AF529B72468008903354A46807048CFA4804308A9849FAF17814';
wwv_flow_imp.g_varchar2_table(7) := '26C787581806944D324B660C22400430089819EA38E071F04767C3109D0D31120C1109CC00360F1B44803C402BA4483C360B93B7AF41221E1366509EBC3D0498271249280902448092C02C57128BCEF0A37D2211E7090D755EC080914422C6F35007E314';
wwv_flow_imp.g_varchar2_table(8) := '4A830011A0343843341A86C98921482883BFBE0E1EB87F130F0D4C4637300F7562D10846299400810A224009D0CAB38A280E7E36C5492612DC4243433D3CF07B1BC1E371F38032A66126EA4C8E0F73C2609C4271117015D73C598FB3D59EA989EB02089F';
wwv_flow_imp.g_varchar2_table(9) := 'AF410C7E2511892093A08E27259309084E8C0096E509B4291A024480A2410B8003798A1DCDF1A88ED578D99CFFFEAD1BC0535B83D13901D31EB80FCF0A1E9E9E6053A529461CB4C113685314048800458155368A0358398AD7D454C3EF6718FCB236F0E9';
wwv_flow_imp.g_varchar2_table(10) := 'D0FD5BEF06D4C5345C159A62670294291407012240717085E0D40D88B2757E34EF724970DFBDEBA1A15E3EBA635AA6E06BAC87AD4CD7E5AAE22A51769F603A7893CBB4311F012280F99842243C0133E14961F973F7AC8380DF27E27A422BD3DDB27940A8';
wwv_flow_imp.g_varchar2_table(11) := '4542E3CCA66A4F642802EDF3468008903774E90BC6D85A7F4873C45E3BD00F1D4B02E995B3A476B6B7C2C09A7EA1110A8E412C3623E224988380CB1C336405114826936CEA33CA2E7E9318858EF645D0BFAC9BCBF96C562EEF86CE8EC5BC28B73DA9DAE6';
wwv_flow_imp.g_varchar2_table(12) := '89B42918012240C110AA0642D3B7201E9BE5095E8F07366D58C5E542361BD7AF04AF57BE7640DBE1D0EF0A314765E7214004980748BED128BBE08DB0B93A969724093EB7E52E70B3951F8C1712D0C696CD77812449DC0CD681D32C1EA14DC10810010A86';
wwv_flow_imp.g_varchar2_table(13) := '505EEF0F4E8D0A4B2B572E3574D12B0A66105A5B7CB062F91D3C974F85585DB8E7090EDF14DA7C2240A108B2F2D3ECA237917ABA13EFF4AEEAEF61A9E6FEAD5ED507CAE3123815D25E689B5B93B3AC11010AEC6F9C8E68973C37AD5F0DAED474A540D373';
wwv_flow_imp.g_varchar2_table(14) := '8AA3CD4DEB5789B499C824AD0A0934F2178800F963C74B4EB3E5492EB04D5F4F27B4F81B99549CBFD64013F4767700FEC32950789A2E88118B420211A000F46667A621967A74191F5FB86B606901D6722B7AD7C032F1A804D61F8D86732B485A69112002';
wwv_flow_imp.g_varchar2_table(15) := 'A48525B7C4105BF65434F18657ADBB4689166D8F0FCDCDBD4176AB687539C1B08D0950DEEE898427C49A3F7A72E4D820BCFAFACE928463C707B14A1E62EC0C343B13E4326D8C234004308E19BFD31B9EBE9D47C9E2140905E92C902FB244803C90C31598';
wwv_flow_imp.g_varchar2_table(16) := '44427DA93D0F13A61689C7A3406781FC202502E4811BDE8D558A7DFBA947E0B597FFA62CE1DB4FFDB1E206845377A145020939214004C8092655293A1B023CE2628ACF570F9FDFDC8B6259C2E737F741535303AF1BAF0562F4B428C7C2C8860860042DA6';
wwv_flow_imp.g_varchar2_table(17) := '8B17BF6CC7FFFEF0CB9BC1E52A0384BC76E0757FE54B1B523100AD6F229184AC0894AFF7B2BA65CD4C3CF2E31900BDABAA72C157BEB81AC5B286871E5C0DE80B3A311B098ACFAE609C823E0244007D8C84C64C7892AF0061C2BD5BD680AF517E4C19E3E5';
wwv_flow_imp.g_varchar2_table(18) := '0A017F1D6CD9243F22914C26602632592E576C592F11C040B7CDCC4C09EDAF3EB44EC8E516BEFAD05AE1C22C3B0B880809BA08100174219215F00233917AE233D0E28355FD8BE40C83DBDBE3617869DB47F0CFFFF6263CFEE44F7840F9A7DB0E00E61934';
wwv_flow_imp.g_varchar2_table(19) := 'C7D50756B543932F7531CC2E841309F9D38B3C933659112002648547CD8CCE8444E49E4D2B846C443872E22A3CF5B72FC2EB6F7E00478F5F8089C9200F4799FCDA9BFB791EEA18B1A9E86EDED4AF88EC9EC0B4902B4D30BB3D44801C119D9D5507D586B5';
wwv_flow_imp.g_varchar2_table(20) := '7D399652D57EFDEE19F8EEF75F816030F3C36B98873ABFD9A13EEAA05AC82E6D5CA7FA14D5F89ABD14E5120172180338A588B3A905AA565555C1DA35ED28E61CAE0E8DC38B3FDB29F43B3BDAE01B5FFF02FCF5130FF3807267A73AA57A81E90E8F4C0AFD';
wwv_flow_imp.g_varchar2_table(21) := '5C84756B3AF9B228EA46A36171B18E710A9911200264C646E444D9CDAF6452FED2C3DA813BC0EDAE16797A422291807FFFCFB721168BF1E5CAFBB7DE058F7EED3EE858D20C1E660703CA8FFEC956B8EFDE013688258846A3F0CCB3BF614B9AF2C774F5EA';
wwv_flow_imp.g_varchar2_table(22) := 'C07CAFB706D6AC926FCA25599D3146024CA7901D012240767C782E1E51B9C0361BD71B7BE6FFFCA737E1F2D5115612A0B6D60D6B07FAD2BE31866F7CAD63E4421D54FEE4E2105CBC64EC8517AD6FD16804CD50D0418008A0031066C7539F3A4179C5B2C5';
wwv_flow_imp.g_varchar2_table(23) := 'B8CB398C8DA94BA77D3DED80CFF3672AECF5D4004E8F94FC514D59252DDB7EE5F225225BEBB348246101023622C002DF4B96A01D4CDD1DCD86EA9D9854578FDADA9A74CBB6B5AA3AE3136A59DD824CA1AB5DF52D1E97BF4FC492E92F0B0244802CE06056';
wwv_flow_imp.g_varchar2_table(24) := '3C1E651794F25CBC950DCEDADADCE7FF58BEB3DD8F3B1EC6C626F83EDB66ECA6AA83D706D974E7E7D5D7BBC1DF2CBF938CA455AE5BE6EB515C458008A0629156C281A464F4762F56C49CF7BDDD2D42F7D295110847A2223E5F88CC44E1DA90FA7DA1BE1E';
wwv_flow_imp.g_varchar2_table(25) := 'B5EC7CDD4CF19E1E753549EB7B267DA7A713017446807610F574B5EA682FCC0EB4D4C13D1BE51B67A1501876EF3BBD502995B2EBBDD310491164332BE36FF6A67272DFF574B509E5384D83041699042240266452E9DA41D4DD69FC2BCF68E62FBFF9205F';
wwv_flow_imp.g_varchar2_table(26) := '014279F0EC67F08B5FBD0FC323E310998DF170EDFA38FCE2D57D3078EE3354815A8F1B9EFCD6835C36BAE9EE54CF1A5AF21AB5E3147D22804E4F2734CFD5B4B4D4EB68A7CF6EF1D7C1371FFBA2C81C1ABA013FFFE52EF8AF1FBDC1C3B65776C1D0F098C8';
wwv_flow_imp.g_varchar2_table(27) := 'FFD6635F627379F9F7C278A2814DC02F3F13844512C938EE286441800890051CCC4A26E50B6094EBD8CD26DCE713BEFC8555F0F7DFF9536868C83CADC13CD4F9830757E653052FE3F5BAF91E374976430CF71432234004C88C0DCFD11200D7E979629E9B';
wwv_flow_imp.g_varchar2_table(28) := '8DEBBAE107DF7B1C1E79782BAC5FB70C7C8D75EC48DFC8E5AFFDD17D3C0F75F234CF8B793DEA2A5592CE001C936C1B57B64CCA6308A41E81601278D88D2ADC1712FCECC2F6CF1FDD02FFF09D87E1A51F3D01CF3FFB175C7EECEBF73032643E3BE45A279D';
wwv_flow_imp.g_varchar2_table(29) := '0172454AD62302C83864DC9A7906C858898919751A9226E80CA08B2C114007A2A449D7003AD59896ED99330552AF5F4CABA0C4868A5D1D11C000C2F184FC44A881222557952449AD53337D531349D2224004D0A2914ED60C28E526553A35ABA4CDB9D3AC';
wwv_flow_imp.g_varchar2_table(30) := 'F1DD2AFE59CD0F22804E8F48A042148E58E7738890E15F38AC3E6A21697C07FA971601B577D36653A2A4F9F0D59CA3AB45A1D1FAA8F5DDA2EE96DD2D22804E1748920A911DA64021CD19C0E5AAD2691D65ABBD6B392CACE190CBA5DE581A9FC8FC42BB35';
wwv_flow_imp.g_varchar2_table(31) := 'BC05D0BE7FA0F5DD2AFE59CD0F22804E8F689741476FA8CFEAEB142B5BF688C6C784E639A6B23964F18A8900593A687A6A0CF08578456564D4FA04B83E3AAEB8CB7DC736880412162040045800899C109CBAB1E06BCBD7478DBDA42E5B2AED767474EE2F';
wwv_flow_imp.g_varchar2_table(32) := 'D744C2134024C8DC07448034D8E08099092FFC2ECFF511F308809F41FCBB7F7A1530A09CC68DBC9286AE2FFCB9A40891202396448079D0E0E0C701A32477A77E9717E323269E013E387411CE9EBFC203CA685F8402849B9A778AB5BE639BB06D0598AEC8';
wwv_flow_imp.g_varchar2_table(33) := 'A244004DB7CE9FF6F4F674C23D1B56426BAB1F947F97AE9873168844D4AF366865A59E7CF6172FA947FFB6B600F71DDBA0D84212601B9538ED018800A9518003634633EDE9EBEB824D1B56802449D01650093078FE7AAA84F57667CE0F0BA75A5B9BB9EF';
wwv_flow_imp.g_varchar2_table(34) := 'D8066C8B92816DC4B62A71A7EF89006C04E080C081C144FEB7F4CE5ED878773F48EC3F260402CDB8E3E1F4D9AB7C6FC5CDE941D5B7D694CFD8066C0B91207D8F399E00382FD60EFEE5CBFB60FDDA656CE84B02B1408BFCAD1D4C38794A7E711D652B8564';
wwv_flow_imp.g_varchar2_table(35) := '3209A70655DF027ED56789B5064980C4567CC63663DB95B853F78E2600FEB46884AD90289DBF72C55258B766A91215FB9AEA6A68F6C9036A3A14862B43EA5ABB502AB370F9EA38844333DC8B969666A8AE9AFB18049200898D04E74A6C836D470C986899';
wwv_flow_imp.g_varchar2_table(36) := 'BF523BE25802CCCE4C43287853E0BD72C59D30B0AA4FC4E70BEDED6D22E9D8892B42B68A70F4C465E1CA92C5AD429E2F20C1FBD9594E49470CB437FB9474A7EC1D49806432C16E0EDD107DDCD7DBC906FF1D229E4EE8D27CBF7FCFFB993F6E95AE6C29D2';
wwv_flow_imp.g_varchar2_table(37) := '76BE774254D3DBB358C8E984B5EC2CA75D1D0A4EDE80249B42A5D3ADF434471220129A00E53999A6A646D8B45EFF33244DBE7A686C6CE0E3E1D2E511B83116E4B2153638251B4EDD00C3A95ABDD7A3EBD666B6BCABB4279188B1BBDED69BD6E936C20405';
wwv_flow_imp.g_varchar2_table(38) := '67124033EF1F58BD2C67187BBADB85EE9EFD1F0BB9DCC207073E112EF4F4A83E8AC40CC2C06AF57A07AF0732A85574B2E308108B46D8D15F7EB3CBEBF140FBE2969C3BB8BB4BFDF0ECF61D472D316DC05FA07977D771D106AD8F223183D0D11E006FEA6C';
wwv_flow_imp.g_varchar2_table(39) := '9188C72016952FA233A85764B28508501A7CF1E257A9A95B734457D2B2ED1BEA3CE06F96BFDFFFBBDB9370E048F92F863F3C7419D01760FF5A5AFCE0F5D43229B73F5C19EAEA582C946767AD33AD134E1559701C0162B18880B4B33DF36A89509A27DC79';
wwv_flow_imp.g_varchar2_table(40) := '47A74879E3ED43422E97F0FA5B0745D54BEFEC1272AE428766758BCE00B9A26663BD84E62511BCB035DA949EEEC5E06153272C77F6FC15B87C6DEEE3C7985EAAF0C9C59B80BF2586F579EBBCD0D3D986A2A1E0F3A91FE14DB08B6143852B40D971678044';
wwv_flow_imp.g_varchar2_table(41) := '5CFD6A4275F5DC9B45B9F46795CB05CB97CBBFC688FA6FBC7D0C7765096F6D57E7FE2B96F582244986FDA8D2DC304B6A0E0E860DD9B480E30860C67AF71D6C9DBDBAA69A77F99E7D2761F486FA43783CB1049BE19109D8BBFF14AFA9D6ED86BE1EF507F2';
wwv_flow_imp.g_varchar2_table(42) := '78628E9BEA2A750824880039A2E67035774D0D2CBBB387A3904824E0F997F77139EF4D1E05A10DE9AE0000072A494441547FF2E21EB10AB574690F54E77136CBA3DA8A2BA2D2BFE29A56DC06F52FEB063CF2622D070F9F83B31F8FA2589270F2CC309C38';
wwv_flow_imp.g_varchar2_table(43) := 'F529AFCBCD8EFEFD4BBBB84C1BE30810018C63C64BB86BAA61608D7A13EDB997768923325728D206A7702FBCBC47585F3BD04F477F8186718108601C3351A2AF7789B82FF0D9A5EBB0F743F9A82C148A20EC7EFF02E0A31868DACFEE49F46A7E1512D328';
wwv_flow_imp.g_varchar2_table(44) := '18438008600CAF39DA1248B0E1EE1522EDF99FEE80A960F1EEA64E4C84E1A5977789FA36DCBD927920893809C611200218C76C4E097F7323F4F6C837C726A742F0831FEF98936F66E499FF7E07B00EB4D9D7D7CDCE3EF2C37918B76B28B7DFAE723B5009';
wwv_flow_imp.g_varchar2_table(45) := 'F57B348F1F1C3E7A1E76EE35FF41B9EDBBCE8A0B5FC4CCE3AEC11D85021120021400202E811E3A7A0ECE7F7C718E95E75E78076EDC34EFB99A11769FE17FD9F44A5BC9395627D68D3E68D34936860011C0185E427B361A837D1F9E84CB5786449ACB25DF';
wwv_flow_imp.g_varchar2_table(46) := '599E999D85EF3DF32644A385FF4EEFCC4C0CFEF5E937982DF90EB65207568A75A30FE80BC62918478008601C33980E4760D77B87606C4CFD0E8FC7DB044D2D3DE0AA92EF105F64AB42FFF1E39D7958578BE092E7D3CF6E872B57E57B0C681BEBC0BA142D';
wwv_flow_imp.g_varchar2_table(47) := 'F4017D419F9434DAE78E00112077ACB8E6ADDB93B06BF7210806433C2E4912D437B6F18047E7465F3B48920CEBFE0F4FC36B6FA9AF2AF2020636AFBE710C0E1E39CF4B489204681BEB50EA93247905087D419F6E8F97FE910CEE9C8D37724F95A501F6AB';
wwv_flow_imp.g_varchar2_table(48) := 'F4DAF018ECD97B18708A83DEE3406FF02D01ED11B9BAA616EA1A0298CDC3FF6DDB0578E796470C6C8E9CB80A3FFFA57AC3CB5B1F00B4AD98C03AB16EF401D3D0A7DD7B0F01FA88710AB921E0CA4DCDD95A3815193C7F193E3A7852DCEDC5E988CFDF09EE';
wwv_flow_imp.g_varchar2_table(49) := 'DAFA05E0E0E074D7CA4B9458F61FFF651BBCFDEE19989854DF4558502895303111815FBF7306BEFBFD575229C0EA68006F5DB3882B02D68D3EA02F98964824B98F673F2EFF8B3AE88F1D021140A797E289041C387C1606CFAAEFDD5657D74293BF1B700F';
wwv_flow_imp.g_varchar2_table(50) := '19FE35F81681323051E5B917B7C3E34FFE101EF9B3A779F8D9B6DD98CC03CA4AFAE37FF543F89F97B6F374DC5455D500DA42395D401F9A9ABBE6F87266F002E00A11FA9EAE0CA5A9081001542C164833B351D8BBFF385C1B52BF072A8EBAA9159F058552';
wwv_flow_imp.g_varchar2_table(51) := '093835E103B3C6934A31BEAB717BC1D7DC099294BD9B90687826A871D7894A7085087DA7152201495A213BB2698B382331381D869D6CA5E7D62DF58D2F6F9D1F1A9BD48B5C3D24706036F9BBA0AEA1954D63EAC1E5AAD62BC27590645806073FDAD02DC4';
wwv_flow_imp.g_varchar2_table(52) := '149024BEE60EF0D4A95325F41D578882D3FA532F66C2917F448034DD7EF3D6045FE60C311260B624496C9567111BC8018C1A0E5E36289138FED63E082C5A060116BCF52DC20ECA4A3AEAA02E96110A06847A46B6FAC6452049122FC55788DE3B08B87AC5';
wwv_flow_imp.g_varchar2_table(53) := '136833070122C01C38002E7C3A047BF61D865936FDC12CC9E562477D7664F5FA306A8BE061BE2289D0777418DBB29B9DCD94F787318D828C001180E1303E11840B9F0DC36FDFF9004E9C3AC752E43FBC006D621798356C2E2EA7D8678BD703E8BB760A75';
wwv_flow_imp.g_varchar2_table(54) := 'FCE439F8ED8E8FE05376930EDB6C9FD614CF534713E0D5D77702861DBB0FC08913672118527F07B8BAC6033E367FAFAA76170FFD225B46DF9B70B58AB545A92A189C8663C70701DB8C6DC7A0E43971EF38024852F626E351BFC1B7982D737601DE752DD6';
wwv_flow_imp.g_varchar2_table(55) := 'A09024499896245516892609D886264664BCA8D66BBB5EBE492E59CA4CF6D1602957CD71A6D6D3B8C010AEA5E3EA09CE9B9B03BD904E6741A10213708A82D3130C6EF7C29B69059A5F501C2FAA9B5ABAD90D353F60DD48F4F94AA568F7FC3ACB1D771C01';
wwv_flow_imp.g_varchar2_table(56) := 'F0399A005B85D1061C18B87A82CB8FA5EA10249D3FD0071870AA528A7AABAA6AF84A162E9722D1B518A08CD880C3FE398E000EEB5F6AAE0E0244001D8028BBB21120025476FF52EB74102002E80044D9958D40090950D94052EBEC890011C09EFD465E9B';
wwv_flow_imp.g_varchar2_table(57) := '840011C02420C98C3D112002D8B3DFC86B9310200298042499B12702448052F41BD5615904880096ED1A72AC140810014A8132D5615904880096ED1A72AC140810014A8132D5615904880096ED9ACA70CCEAAD200258BD87C8BFA2224004282ABC64DCEA';
wwv_flow_imp.g_varchar2_table(58) := '081001ACDE43E45F5111200214155E326E7504880056EF21F2AFA80814910045F59B8C1302A620400430054632625704880076ED39F2DB14048800A6C04846EC8A0011C0AE3D477E9B820011C01418E719A1A86D102002D8A6ABC8D1622040042806AA64';
wwv_flow_imp.g_varchar2_table(59) := 'D3360810016CD355E46831102002140355B2691B048800B6E92A7B386A372F890076EB31F2D754048800A6C249C6EC860011C06E3D46FE9A8A0011C05438C998DD102002D8ADC7C85F5311309100A6FA45C60881922040042809CC54895511200258B567';
wwv_flow_imp.g_varchar2_table(60) := 'C8AF922040042809CC54895511200258B567C8AF92204004300366B2615B048800B6ED3A72DC0C04880066A048366C8B0011C0B65D478E9B810011C00C14C9866D112002D8B6EBACE1B8DDBDF87F000000FFFF56614CD7000000064944415403004A6C5C';
wwv_flow_imp.g_varchar2_table(61) := '793CD13AB30000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10096213863775611934)
,p_file_name=>'icons/app-icon-192.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_256_rounded_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D49484452000001000000010008060000005C72A86600001000494441547801EC7D099C1CC575F7ABB9F69CDDD5EEEADA5DDD42C2088995C421900CC2DFF7F397F8B339B41248820F637FB156D8C90F27B683E3D84401E238';
wwv_flow_imp.g_varchar2_table(2) := '7162923880A410C0187420AD843812B0392484B0101212A74E0412BAD0BDDA6BF698A9D4EBD93E66678FD9D99EEAEAE937BFAEE9EAAAEA57EFFD5FD5BFABAB2F1FD08F1020043C8B001180675D4F861302004400D40A08010F234004E061E793E9DE4600';
wwv_flow_imp.g_varchar2_table(3) := 'AD270240142810021E458008C0A38E27B309014480080051A0400878140122008F3A9ECCF63602BAF544003A12B426043C88001180079D4E2613023A0244003A12B426043C88001180079D4E267B1B01ABF544005634284E08780C0122008F399CCC2504';
wwv_flow_imp.g_varchar2_table(4) := 'AC08100158D1A03821E0310488003CE67032D7DB0874B59E08A02B22B44D0878080122000F399B4C2504BA224004D01511DA26043C84001180879C4DA67A1B81EEAC2702E80E154A23043C82001180471C4D661202DD214004D01D2A9446087804012200';
wwv_flow_imp.g_varchar2_table(5) := '8F389ACCF436023D594F04D01332944E0878000122802E4E9EBDE4F5C09D77BE9E3BEFBBCF14CE5BF44CF1C2BB5E1874C7F7D695CDFBD6338317FCC986A1B72FAA1B3EFFDB1B2A28A88701FA067D84BE429FA1EFD087E84BF429FAB68BBB3DBFE94902B8';
wwv_flow_imp.g_varchar2_table(6) := '75D1FA710B6BD7CD5950BBF66F17D6AE7D56849D0B16D71D5DB8B88E579C38DBDE967BB62518F337047DFEF3C05BCF7644F9E9608EFF240B749C88F9E0982FD47194827A18A06FD047E82BF419FA0E7D88BE449FA26FD1C79AAF6BD7EE147E7F36DE06D6';
wwv_flow_imp.g_varchar2_table(7) := 'CD5978D7DAB15E64034F10C0C2EFACAF168EFFD9C2DABA4D0B6BD736FA7DB103C0781D63EC5E60EC4611AA194085171B80176DD67CCD58B5F0FB8DF136C0EB80B34FB06D0872D838BFB6EEA7B7D6AEBB2C5BB0E9CD8EAC248079F39E0909677E4D74FA87';
wwv_flow_imp.g_varchar2_table(8) := '85430F833FB65380701F30B816182B10715A0881640444DB6000D7F918DCEF677C97684307C508E15FE6D7AEF95FD8A69277707F4A5611C0EDDFDD307E416DDDCF0365BE83A2A3BF28DC739770E808B1A68510E83F028C8D618CDDED63BE57B04D8903CA';
wwv_flow_imp.g_varchar2_table(9) := 'DF611BEBBF2075F7703D01CC139375F317AFFDB6E8F89B63B18EFD8CC15F316095EA424E9AB91181CE36F5136C630B16AF7D4390C19DD8F6DC688B55675713C0FCC5753707A2BEAD3E60FF293AFE2CAB6114270432858020832F0BD98F0763BE8D0B17AF';
wwv_flow_imp.g_varchar2_table(10) := 'FD3F22AEECD29762BEBE0AA8983F7FF19AD90B17D7FD4128BF8E313649451D49272F20C0A603B097B02D629B0417FE441F728FD638E41260AFF481EF75A1F50C1168210454406006B6C905B56B7F8B6D54058552D5C1350430FF3B6BAE09C6FCEF09C3E6';
wwv_flow_imp.g_varchar2_table(11) := '8B400B21A01C0262347A7B20EADFB5F0AEF56264A09C7ADD2AE40A025858BBEE0EE66378D4F7E4CD1ADD7A8E129544803118C763D1B7B0CD3AAD602AF52B4E009C8921FFDF01E3BF618C85523188CA10024E23A0B555D16617D6D6DDEFB42E7DD5AF2C01';
wwv_flow_imp.g_varchar2_table(12) := 'E08D1702C0B5C2809F88400B21E03E0418FC74416DDD6FB02DABAABC9204307BC9EB816099AF0E189BA32A70A41721900A028CC11D8132FF1A6CD3A994975D464902187EFCCC9300ECEB403F42200B106000378836FDB84C5352AD4B39025858BBF6178C';
wwv_flow_imp.g_varchar2_table(13) := 'B105A91A40E50801372020DAF4EDD8B655D355290258B0A8EEFB62D87F8F6A20913E84802D0830768FD6C66D11668F106508E0B6C57533998FFFB33D6691144240510418FFA7058BD62973DBBA120480B3A4310EBF01604AE803F4230432840063CCCF7C';
wwv_flow_imp.g_varchar2_table(14) := 'B1C7B1CD67A80AE88F5C253A5CB0D4771F6330AE3F8A535942C0BD08B0F1D8E655D0DF7102B875F1BA4B39C00F5500837420046421806DFEB645CF4E96555F4FF5384E007E1E7B808961514F0A523A21908D08609BE7ACC3F13B051D2580F9DF59730D30';
wwv_flow_imp.g_varchar2_table(15) := '7663363A986C2204FA4440B47DBB2704FBACB34B014709404C87FCB28B3EB44908780B011F7FC049831D2380058BD6DEC4805DE3A4F1543721E034020CE0BA05B5EBFEC8293D1C2300F0B1EF3B6534D54B08288500E33F764A1F470860E1F7EA4601876B';
wwv_flow_imp.g_varchar2_table(16) := '9D329AEA2504944240F485797FF2CC9881EA94CEFE8E100044E15B8C014B4761DA8710C83604B02F0403FE6F3A61970304C0B1E3DFE984B1542721A02C029CDF01A0F50DA92A4A2780DBEE5A7795B0709408B4100284808E0063633AFB869E22652D9D00';
wwv_flow_imp.g_varchar2_table(17) := '788CDF24C532AA84107019029C43DA5703D235553E0100936E64BAE0D07E84804C0438E7D2FB86540298FFED0D1502D02922D0420810024908B02BE72D7AA638293983095209C017EAF82ACE7866D01E124D08B81601EC1B415FE08F651A20950038007D';
wwv_flow_imp.g_varchar2_table(18) := 'CD47A677A92ED721C081CFEEAFD203292F950080F3EA81284BFB1202598F80E43E228D00962CE13E6040E7FF59DF82C9C08120C0804DD6FACA4084F4635F5F3FCA0EA8E8BEA3CF4E11C6E50D4808ED4C08643B020CF2F71EAB9B20CB4C690410F345E9FC';
wwv_flow_imp.g_varchar2_table(19) := '5F9657A91E5723C07CBE944F95076AA86FA00252DD9F3126CDA85475A27284809208F098B4BE228F00004603FD0801422015042E4EA5901D65A41100E730CC0E8549062190ED087060D20E96D20840388D084080400B2190020229F59514E4F459441201';
wwv_flow_imp.g_varchar2_table(20) := '70262E0196F5A90D1520040801D15578A9AC4783A510C0A2453B020C2040BE250408811410602C387BC9467F0A25075CC437600929083877EEA0E8FF2914A422840021A02130F8A35352FAA6944AA00AA4B099861CFD1102D980401F7DC62E13A51040A4';
wwv_flow_imp.g_varchar2_table(21) := '298F460076798CE4780201597D460A01E4065AA4D4E3899641467A0201597D464AC76C8DE4D008C013CD968CB40B01597D460A01840B82440076B50C92E309047AEB33760220850078478C2601EDF49A4DB262B12860B0491C89B11181B6D64629074D29';
wwv_flow_imp.g_varchar2_table(22) := '0460232E24CA2604440383F3670F69A1ADB5C926A924C62E04DADBE48C9A8900ECF2988BE4B4B53642E3852F0038D742E38513D04624E0220FDAA72A11807D58BA42529BDEF9BB681B2781C62EA9B4A91A0276EB43046037A20ACB6B8D34C48FFC9D3A16';
wwv_flow_imp.g_varchar2_table(23) := 'E4E50286CE4D2D0FCBE8DBB4CE7E048800B2DFC79A8591960BD0D470528BE35F7E7E1E5C77ED74112E4F20012C432480087923100178C0CF91967A686E3C65585A50900FB3BF3C0DF272734408C549A0B0C0C8471240C230122892B508100164AD6BE386';
wwv_flow_imp.g_varchar2_table(24) := 'B589C9BDE6C6D3F10DF15F283AFA6C71E4C7CE2F36B5252F3704B3674D850291A725883F240CDC5744695104814CA841049009541591D9D1DE0A8D0D62B6BF531FADF38B237F6E28D89962AE7273E224100E171A89B86F4747ABB14D91EC43800820FB7C';
wwv_flow_imp.g_varchar2_table(25) := 'AA59148B764043FD71ED321F26E4E6E5C075E2289FD34DE7C77C0C4802D7CEAC861C716A80DB78991065C462516D93FEB20F012280ECF3A9E8B731B8507F4CACE31DD7E7F7C1B5574F05ECE07D998B65BE7CCD54C07DB02C179DBFE13CCAE2B84921CB10';
wwv_flow_imp.g_varchar2_table(26) := '2002C83287A2390DF52720166DC7A81666CEA88670385F8BA7F2572CCA5E7DE56546D168B40DF03E01238122D211C8548544009942D621B94D62C2AFA3BDC5A87DEA6517C390F212633BD5C8B02183A07A8AF976EAF6B666686E3A93EAEE54CE25081001';
wwv_flow_imp.g_varchar2_table(27) := 'B8C451A9A8899DB4555CF2D3CB8E1A5505634757E89BFD5E8F1B530123AB861BFB459ACF437B9B492E4606455C8B0011806B5D97A8384ED4355E306FF4C14B7AD593C725164A636B6AF584841B85F0CA00E7B13424D12E2A224004A0A257D2D0A9F1C217';
wwv_flow_imp.g_varchar2_table(28) := 'C6A41F008399574E8680DF0F03FDA18CAB675C26C4C49F4EC549C1A606F3A62291414B8611C8A47822804CA22B4936DEE9673DEFAF16E7FDFD99F4EB4BCDE2A202311F30D128D6D6DA0874BBB00187AB234400AE761F4054CCF637379A9373438796C3B8';
wwv_flow_imp.g_varchar2_table(29) := 'D1E679BB5DE6E17CC0F061430C71CD62B211EB361228E24A0488005CE93653691CFA03C4AFD1FB037EB862DA97CC4C9B63D3A74E04AC03C5E23C4093E5E1224CA3E03E048800DCE73343631C86472DB7EA4E9E34017ABBD3CFD831CD08CA9E7CC945C6DE';
wwv_flow_imp.g_varchar2_table(30) := '1DED117A91888146662299964A0490698433249F730E2D4D670DE9C5E1C28C0CFD8D0A3A23782A607D5EA099EE0DE844C69D2B220077FA4D4CC25D8058ACC3D07EFAB44B8C78A623D3ABCD1B84F08E431C8964BA4E929F1904880032836B46A572711DBE';
wwv_flow_imp.g_varchar2_table(31) := 'C572F4C71B7E0695984FF165B47221BCACB408468E306F306A16A3002E4624228B1697214004E03287A1BA91E67A71CDDFBC19E7FCB97A78E3AD5D52437D7D03AAA205BC37A03572418BD39F7D08C89044042003651BEB88C5A2D0D2722E4162FD850638';
wwv_flow_imp.g_varchar2_table(32) := '75EAACD480755A95681123122E4626D6348AAB8F001180FA3E4AD030D2725E5CF58B5FF64BC87078033B7FA48546010EBBA1DFD51301F41B326777686D3187DE974F9B00B7DD3ADBD1307DAA7959B0D5F22092B32851EDA9224004902A520A946B8D3488';
wwv_flow_imp.g_varchar2_table(33) := '73FFF84B3E509DBBBEFD15A8F9C65447C3E26F7D0555D1424C5C95686BA5AF0C69600CF04FD6EE4400B290B6A19E48B318FE77CAB9EAF28B6150495EE79673ABB2D27CB862FA444381088D020C2CDC102102708397848E78D75D34DA2662F1E56B5FAD8E';
wwv_flow_imp.g_varchar2_table(34) := '4714F8B7EA820F2545A3E6DB8814508F54E8050122805EC05129CB7A641D3EAC0C265F325C19F52E9B540143069718FA5875351229A2240244004ABA2551A998B8F4D7D66A7EB7EF86AF5D91584081AD1BBE76A5A1459B98AB303628D26F0464EE400420';
wwv_flow_imp.g_varchar2_table(35) := '13ED34EB6A6F6B36F6CCC18F78CC3467DE8D8C3422478FD7038634764DDAE5FA591320D4F9CA71BC2468D539A93025288300118032AEE859116B679A2126FF7272023D17EE23E7E5D776C3DD3F7E0AE6DCFE20FCD98F1ED302C6EFFEF1D380797DECDE63';
wwv_flow_imp.g_varchar2_table(36) := '765E5E10AE109725F5026D16D2D2D368AD1E024400EAF92449232B014CAB1E93949F4A426B5B073CF8F02BB0ECB197E0F323C9AFF4FAFCC8492D0FCBB4B59B971A5391AD97B1EA66D559CFA7B57A081001A8E793048DDADB5BC4B57FF3BEFFEA4B2B13F2';
wwv_flow_imp.g_varchar2_table(37) := '53DDB8F7E7EB61F35B1FF4591CCBDCFBF3757D96EBAEC0B429238C647C4A90AE061870A41C915D90084036E2FDACCF7A24BD687C15840B73FA290160F5FA1DB0FFC01163BF8A8AC170DBAD5F81EFD57E430B18AF185E6EE4EFDB7F04D66ED8696CA71A29';
wwv_flow_imp.g_varchar2_table(38) := '2ECA8531A38619C5ADBA1B8914510A012200A5DC91AC4C7BAB390178F9D471C905FA48F9ECF059585DF786516ACAA5E3E0969B67C2B021C5901B0A6801E3B7CC990598079DBF156B36C2E1A3E73BB7525F5D3EED22A3701BDD156860A16A84084055CF08';
wwv_flow_imp.g_varchar2_table(39) := 'BDF0F25FD472F3CFD4C923456AFF96177FFFBEB143497101CCFEF224F0FB9891A647300DF34A4AC27A12FCF7EFFB3E65300A7746A64E19D91903C09B828C0D8A2889001180926E892B657DDF1FA68C1F6B0ED3713B9570E8B0F9B190EA29132118E8F95B';
wwv_flow_imp.g_varchar2_table(40) := '019877D9E4F186D8CF0E9B9F163712FB885C7CD1908412D10EF3EEC5840CDA4842C08904220027504FB1CE0E4BE7193DD23CB74E7177ADD86131BBAF45C4DF5031EC17AB5E9721E54546FE916EAE161899BD44AA2A071BB91D9697961A89145106012200';
wwv_flow_imp.g_varchar2_table(41) := '655C91AC8875F83F6AA4D9A9924BF69C525E5A6C6436B7B41AF19E229156F3885D5C9CDE6BC6468F1A6A88B7DA6024524419048800947145B222D176B3C38EAC4A8F00C68E31470E873F4FBEFEDFB5D6C39F9F3692C68F4DEF798351234C5DA396518C21';
wwv_flow_imp.g_varchar2_table(42) := '9822CA204004A08C2B9215895A9EAA1B51599A5C20859431A3CC73F2F73FDC0FE7CEF7FCBCD07303F00000100049444154FEB9FA16C032BAD8B163CC23B99E96CADAAA2B11402A880138558A08C029E4FBA837DE71CC577F55559A4FDBF5B16B42F6F5B3';
wwv_flow_imp.g_varchar2_table(43) := '26407E7EFCDE017C71EF2B1B77428C27DFE987571C7EF7EA0EC03228205C9807B82FC6FB1B46540E327689C53A844CF346262383224A204004A0841B9295B01EFD3177D810F3F21C6EA71A4A8AF3E0AEFFFFC746713C0D78F0DF9F83F52F6C834D5B766B';
wwv_flow_imp.g_varchar2_table(44) := '61FD0B6FC3830F3D07478E9AA70877DFF5F5B46E3AC28ACA06E5E3CA085D6D313228E2380244008EBBA02705CCA37F2827D853A194D2675E35066EF8BF3312CA1EFCF4286C7F778F160E7E7A2C216FDE4DB360DA65550969FDD90885122F35727A5B707F';
wwv_flow_imp.g_varchar2_table(45) := 'E0935A9608402ADCA957168B99C3E6C28281BFFAEBCE0557C3FD3F5D0025BDCCEC979616696516CC1DF8FB064A2C1F2AE1165B5247C03B259DB49408C049F47BADDB1C01846D2000AC6AD2C5C3E0D7BFFC26FCE5F76F8685B7CC86993326C175B32603BE';
wwv_flow_imp.g_varchar2_table(46) := '59F89E3F9F03FFF60F770096011B7E05F9B986141A0118502817210250CE257185AC47CD7078E02380B8548082FC10CCB87C34CCBD612AFCE04FBF0A772FFEDF806F16BE6AFA28C8CF0BEAC506BCC649445D0811808E847A6B2200F57CA269C4C1DE5300';
wwv_flow_imp.g_varchar2_table(47) := '4DA8C4BF7038DFA8CD4A6646224594408008400937242B61ED340585B9C905144F292C3075A61140CFCE723A8708C0690FA4503F4B7E782F85BD9C2DE2F3994D8B08C0595FF456BBE9A5DE4A519E740418335D136971DF7BF69B9BCDDB98ADB64807922A';
wwv_flow_imp.g_varchar2_table(48) := 'EC1501B395F55A8C32A5236039EA373547A4573FD00A131E3C72E31066A000B8647F2200451D653D6A26742645F5EDAA965567AB2D5DCB79795B05DB890054F042373AF87CE6ABBF5B52788CB71B118E2659472D3E5FE29D818E2A469527204004900087';
wwv_flow_imp.g_varchar2_table(49) := '3A1BD6A3664B8BF98CBE3A1AF6AE49B3E5B48508A077AC9CCC25027012FD5EEAB6769A53A7FBFF72CE5E444BC93A7FDEFC9419A3118014CCD3A98408201DD424ECD3F5039B274F9B1D4A42F503AAE2C4C98684FDAD9F354FC8F0F0862AA61301A8E2098B';
wwv_flow_imp.g_varchar2_table(50) := '1E0DF527A0AD35B1C37FD1A553598A2B173D7EE242824E680BDA9490481B4A204004A0841B4C251A2F7C01ED6DC96FED39FE45BD59C8A6D8AE0F8F02069BC419624E9C4CD6156D42DB8C4214510201220025DC1057023B081E2DE35B003EBFE99E63C7CF';
wwv_flow_imp.g_varchar2_table(51) := 'E9C9B6ACDFDC7A10EEFBC5335A786BDBA7B6C8D4851C3D7E568F26D880B6A18D4626451C47C06C618EABE26D0570888C1D4447A1AA6A384CB974A2BE09073F3B61C4ED88ECD96FBE0464F75E336E87EC4F0E9ABA5E266C405B74B968A3D74940C7428535';
wwv_flow_imp.g_varchar2_table(52) := '1180025E68A83F9E30ECAF183E04AE9AFE25281B1436B4FBF0E34346DC8E88F5253D5C7F11A00D82DBDBA3B077FFE786A4B2D222CD16B4494F4412409BF56D5A3B8700118073D86B356347B07E44133BCAD5575EAAE5E1DB7BFCC6977C38EC3F785A4B57';
wwv_flow_imp.g_varchar2_table(53) := 'F9EFC067670CF550F7E2A2026D1B6D1A3AD4FCB211DA8CB66B99F4E7180244000E418F475DEC00D8117415B0836047D1B7713DB8CC7C1DF89E7DC73149E960D57170B9A93B2A3DF3AAC98036621C03DA8E18609C823308100138833BE079307600BDFAA1';
wwv_flow_imp.g_varchar2_table(54) := '43CA61D68C29FAA6B12E2F375F07FEF19EA346BAAA91DD7BCDCF900F2E375F0F8EFA32C6341B87085B711B036280F31F18F74250CD462200073CD2D4783AE19C1F3BC48CCE617F5775CACACC4F7BEDDE7BB86BB672DB1FEDFECCD0A9BCCC242F23514470';
wwv_flow_imp.g_varchar2_table(55) := '94535E6692035E226C6E344F1D44115A24214004200968BD9A48CB05686D31AF93978BA324768880E5929F5E16D7E5838A20188C3F1874A1A1093EF954DD8EB2F7C029D09F5B088542505A5288262405B475E6D553006DD733232DE7A135927807A19E47';
wwv_flow_imp.g_varchar2_table(56) := 'EBCC21400490396C9324C7A21DD02C8EFE7A46417E1E5C23CE8BB143E869DDAD47549ADFE8DBBC755F77459448DBF2F67E438F9155E637098D444B24E0F7C38C2B2E8582827C23B5A9E114C462C95F2D320A50C4760488006C87B46781CDCD78834CFC75';
wwv_flow_imp.g_varchar2_table(57) := 'DF38433E6BE6540806E247F79EF702A8AA1A6264BFB1E54323AE5A64D3E60F0C95AAAAFAFEAE604E280833AF9A62B95988434B13626488C9AA888AC6100148F24A34DA0E6D9621EE97268C8542CBBBF37B5363B09807C8C9C9D18AE053761FEFFD428BAB';
wwv_flow_imp.g_varchar2_table(58) := 'F4F7D19E13D0D0D8ACA9942386FFD67B18B4C41EFEF0EDC1170B2CF4ECD6C80540ACF46D5A6716012280CCE26B488F58CEFB73737360C2F8FE7D7A6B846548BD65AB39D4362A7038F2A645A751A32AFBA5CD45632B014943DFA955CC93E8715A67160122';
wwv_flow_imp.g_varchar2_table(59) := '80CCE26B48C7CB5DFAC698D155C018D337535A8FA8344F0336BEF91E44221D29ED27A310EAF2C696F78DAAAA2A061BF1542281801FC68C3649C38A552AFB5399F4112002481FBB94F7C489AD983805D077183AD8BC04A6A7F5B52E1D1486E2A2F8ADC138';
wwv_flow_imp.g_varchar2_table(60) := 'D3FEEAE6BD7DED222DFF954D7B8CD97FD471500FB3FFBD2934646899911D8DB665DD64A0619C62112200090E897624BED2ABACB428AD5A274C186DECB7E1C5B78DB8D3910DFF65EAF2A58BC7A4A54E49517EC27E48020909B4911104880032026BA250CE';
wwv_flow_imp.g_varchar2_table(61) := 'CD4B5BA160FADFDF1B5939187273439AF0D3A7EB61EB76F3A61B2DD181BF2D6F7F0A67CEC45F005290970B95C3CBD3D202AF86F82CF742F098F969B4B404D24E2921400490124C032B84F7FDEB12F24427D1E3E9ACAD33E675CF9947DE7464D9B1CFFA17';
wwv_flow_imp.g_varchar2_table(62) := 'B61962264E4CEFE8AF0BC8CF333F82CAAD8F2BEA05686D3B024400B6439A2C905B1EB7B51EE5924BF69D326AE430D047119F1C3C06BB3E70EEF980ED3B3F87839FC6DF25803A8D16BAF56D41CF2582623250CFB562A6A7B975ADB2DE44002A7BA71BDD02';
wwv_flow_imp.g_varchar2_table(63) := '62983C6EDC4823E7D1275F33E2B2238F3EF98A51E545E347F5FBCA86B133451C438008C031E8D3AFF8A27195C628E0D8F1D3F0BBD7F7A42F2CCD3DFFFB958FE1E4A9F8EBCA43A1108C1B5B91A624DACD490488009C443FCDBA71C26CD225E38DBD9F5EBD';
wwv_flow_imp.g_varchar2_table(64) := '115A22F23E20DAD4DC064FAD7EDDA8FF52A10BEA642450C435081001B8C655898A8E1D3D1C0A0AE36FDB69686C81DFAEDE9A5820835BBF59F59671DD3F1C2E8031A38665B036778B565D7B2200D53DD48B7ED3A64C30725FFAFD7690F18CC0071F1F8757';
wwv_flow_imp.g_varchar2_table(65) := '5EDB69D43BADFA62234E11F7214004E03E9F191A0F193C08860F356FBBFDD5432F64F4540087FEBFFAF7E78DFA2B860F81F2D262639B22EE43800840B2CF2C57046DA979C488A1869CB3672FC0634F6D31B6ED8E3CFAE466A8BF607EB4A4AF67FEEDAE9F';
wwv_flow_imp.g_varchar2_table(66) := 'E4D98F001180FD98F62AB19FCF00F52AEBD8F133B06DFB4709655EDDB813DEFB287E6D3E2163801BEFBE770436BD693EF083E2B6EDF81050078C534846C00D2944006EF052373AE2BBF7FFB0ED3D91137FC1888818CBAF7EFD1C9C391B7F36DF481C40E4';
wwv_flow_imp.g_varchar2_table(67) := 'E4E94678F0E1E79324C46231401DF61E30BF0390548812944680084069F774AFDC3B3B76C3871F9BEF04603E3F844B2A00D7207E7855E0E7FFBC01DADACC671044725A4B6B6B073CF0CB67A1A929A2EDCF58625D98F8E147FB61FBAE7D18A5E032048800';
wwv_flow_imp.g_varchar2_table(68) := '5CE4B0B6F676310CDF09878F98DF07F0F983503C6804048379505864CE077C7AE804FC7AF9AB03B6EE570FFF0E8E1C3D65C809170FD3EAC23AB16E3DE3D0213C45D809EDEDEABCA740D78DD63D23E0EB398B725442A0A93902AF6DDA01A7CF981F090D88';
wwv_flow_imp.g_varchar2_table(69) := '4E5F3CA80A7C620480BA2209E4E60FC2A816B66CFD08D6BDB04B8BA7F3B766C3BBF0CE0EF3BD0379F9A51008E66AA2B04EAC3B2074D012C41FEAF6DA1B3B0075159B9E5EDC623C11800B3C7546CCEEBFB6F11D310C37CFEB43B96128C2613F4B74617E01';
wwv_flow_imp.g_varchar2_table(70) := '7652F3A9BAA756BD0E9BB61C48B292F5F142A257DFD8072BD76C32F6C38E9E5760920B66305137EA80BAE03686C6C626405DCF9DA7577C231EAA87C4D6A3BAB61ED4EFC8B153B071F376C0E1BF6E7E9EE8E48561F315617ABABEC65301EBF0FC5F1F791E';
wwv_flow_imp.g_varchar2_table(71) := 'FEFAFE3A58B9F61DA87B7EA716F67D625E29C0B89EBE4294F9ABFBD6C243CB5FD4C501CA429946429708EA823AE9C9A8EB6B9BDE01D45D4FA3B59A081001A8E9174DAB8FF71E82B7DF315FB58D8905A2E3E75986F998D635E0F03C5C340C9898B0D3F376';
wwv_flow_imp.g_varchar2_table(72) := 'EF3D0C6B9E7D13F0B9010C073E311F23C638A661582BCAECDD67CEEAA30C9485327559DDAD5127D4CD9A87BAEFDEA7FED78CAC3A7B2D4E04A0A0C7F159F8ADEF7C04BBF77C6268C7980FC262C89F931B7F2F20F4F1F307426272B00AFC81F8EBC4FB28DE';
wwv_flow_imp.g_varchar2_table(73) := '6D36EE5B2CE618FC4256B705BA24A26E61A123EA0A9DBF8F771F10F308BB016DEA4CCAFA959B0C240250CC5BAD6DED62C8FF2E1C3D66BEFBDFE70B88F3FD4A6DF6BD3FEAFAFC018D040AC5682037BF0482A17C0888493C0CCCE73744611CD33060192C8B';
wwv_flow_imp.g_varchar2_table(74) := 'FB60E7471946C114223811595452093E5FC0288D572D366E7E37E134C6C8A488A3081001380A7F62E58DDA4CFF76387BCEFC76A0DF1F82A27E1C851325C6B7423905905F5006E1E2E1809D134328147F92104B601CD33060192C8BFB605E3A01470C9ACE';
wwv_flow_imp.g_varchar2_table(75) := 'FEF8FB0B5106DA845731E80A01A2A14E200290EC8B9E9E0538F1C559317BBE0D9A9B5B0C8DF0685C34088FA67E23CD2D119C3340DD0396CB844D4DCDC2C677E0C449F352A65BECC9563D89001CF46C24D20667CF37C2B61DBB61CBD65D0937D1E4E41669';
wwv_flow_imp.g_varchar2_table(76) := '476CC6DCEB22D4BD48CC09A02D3ACC788560CB1F766A36A3ED9156F345261C985ECCB56BB729EEDED6E536A43BF53D7FBE1EEA36BCA685175F7E135EDFB40D3EB7DCD987C5F2C470BD203C18A35911D0963C71E9D26A0CDA8CB6BFF8D2660D0BC404B1B1';
wwv_flow_imp.g_varchar2_table(77) := '96A178E6112002C83CC6C0586A4736ED7C5F4CA0E58909BB8CAB65D189491865E4894B9761311AF0F98390CA8FB1D4304B451695E9190122809EB1B12D07CFE57BEB647E71A92EBFB01C8A4B474040CCD2DB56712F82429649C0604E7E2F25EDCBC22B04';
wwv_flow_imp.g_varchar2_table(78) := '25A523016DF5FBCD09C2AE3530E607C4AC6B3A6DDB8F001180FD982649C409B192B2D1101647C070718538B71741C48B4567281D3C4EBB54979B570C327FC1501EA04E18B063CAAC1B6D45B2D36C1718840516565C06958F06C40C5CF673A3BA5208A0B9';
wwv_flow_imp.g_varchar2_table(79) := 'A59DBB111C3B75668C69D7F1B1E36941CC8EFBFDA90D87EDD4C32A0B3B19066B9AEC38628004A461224809E3B27550B1BE82704E4C865E52084096313200A33A080119083434C939684A210059C6C8700CD54108C8402027B755CAA8590A01C832468663';
wwv_flow_imp.g_varchar2_table(80) := 'A80E42A03B04EC4E8B74E465CF29802C63EC7602C923049C4220B7A0257B4600B9E75AE83D514EB524AAD79D081C8181BFD03105CBA59C024C9A348F08200567501142404740569F9142004B96B09818CFB4EAC6D19A10C82604ECB605FB0AF619BBE576';
wwv_flow_imp.g_varchar2_table(81) := '274F0A0160C50CE004AE2910028440EF08C8EC2BD20880734E04D0BBDF299710D010102380CFB488843F69042093D524E0465510021943807179A365690420D0DA23022D8440562190196378F68D0080F9D2FF4245665026A984809A0848EC2B3E5908F0';
wwv_flow_imp.g_varchar2_table(82) := '588C084016D8548FAB1190D957A411C0C48A9A7D003CE66ACF90F28440A611E0D01CEF2B99AE282E5F1A01745ED7DC1FAF96FE0901F72390090B38F00F962C61D20E94D20840038B333A0DD080A03F42A0070498DC3E22950062C037F660362513028480';
wwv_flow_imp.g_varchar2_table(83) := '4080732EF520299500FC51F602E7C0859DB4100284401704B4BED11E7CAE4B724637A512C0D38FD61C11D6BC2F45D494200000061849444154022D8480AB11C890F2EFAF7AECC6631992DDAD58A904801A30E02FE19A022140082422E044DF904E003146';
wwv_flow_imp.g_varchar2_table(84) := '0490E876DA2204E208301F7B361E93F72F9D008A6263B608F30E89400B214008E808707EF8E8D0D2EDFAA6ACB5740258BEFC72FC18DC13B20CA47A0801BB11C8883CC61EDFB8E47AE92FCE914E001A787E785C9BF1D436E88F10F03602E2B258477B2CFA';
wwv_flow_imp.g_varchar2_table(85) := '9813283842002B1EAA39C418FCCE0983A94E4240350418E72FAE597ECB6127F4728400D0D018C47E816B0A8480D7111013E3FFE214068E11C0AAA5F3F0AEC0979D329CEA2504D2412003FBBCDCD9173220BA6F918E1100AA16E5EC1E5C532004BC8A008B';
wwv_flow_imp.g_varchar2_table(86) := 'F97FE4A4ED8E12C0EA6573DE03CE37380900D54D0838868068FB4F2FBFE903C7EA17153B4A00A27EF0F9833FE4C01B314E8110F00C029C3745B9FF074EDBEB38013CF5F08D0720C67EE63410543F21D0170276E6C7007EB87AF9CD9FD829331D598E1300';
wwv_flow_imp.g_varchar2_table(87) := '2ADD712EFA6BCEE14D8C5320043C80C09655CBE62E55C14E250860CD9A5BA27E7FE05B742AA04293201D328A000EFD63BE6F66B48E7E08578200505FED5400E04E7A6F20D02F6B11E0B11863FF4F85A1BF0EB13204800AAD5C3AB78E03FC35C62910022A';
wwv_flow_imp.g_varchar2_table(88) := '2160872E3CC67EB06A69CD7A3B64D92543290240A30409FC42CC073C8E710A8440B620C039FFD795CB6B1CBBE3AF271C9523005434CC47D50A12F83DC62910026E47408C6AD74F1C5EF3172ADAA124012C5F7E797B230FDD049CAF531134D28910481901';
wwv_flow_imp.g_varchar2_table(89) := 'CE3734C642B72F5922EF55DF29EB260A2A4900422F787EF9379A572CAB990B1C1EC06D0A84805308A45BAF18C5FEBD68C337635B4E5746A6F7539600E286332E00FC1970F64D710E158DA7D13F21A03602A2ADB601B0DB572EABF989588B330050F6E753';
wwv_flow_imp.g_varchar2_table(90) := '56338B622B96CD7952B0E94C718970AF2599A284807A0870FE81E8F133572C9DF3B47ACA256BE40A0240B5572D9FFB762852562DE27F2BE606F0B562224A0B21A008029C639BBCBF908F9EBE6AD95CE9EFF64B1705D710001AF8C413D747562CAD59128D';
wwv_flow_imp.g_varchar2_table(91) := 'F92E15C3ACE7318D0221904904FA922D46A6A229C25A9F3F7889689BF7E204765FFBA894EF2A02D0815BFD1F73F6AD5C36F70606304BA4E15B86C58A1642402E021CF846CEF87471AE3FAFF34E56B90AD8509B2B0940B7FBE9A5355B04EBCE620CAE1669';
wwv_flow_imp.g_varchar2_table(92) := 'BF15E75EAD624D0B219031043ADBD8D378F059B974EEF5AB96CEDD99B1CA2408763501E8F83CFD48CD56410477402C5425AE18FC480CCB1C7FCC52D78DD65983C041D1F9EFC13626DADAED78F0C906CBB282007447AC5CFE8DD3E28AC13F8921D97871C5';
wwv_flow_imp.g_varchar2_table(93) := 'E08F04113C2C9CF6B99E4F6B42A03F0874B69D4738675F159D7EDCCAA535FF886DAC3F32542F9B550460057BC5D2B92F0B22F89E70DAC82867D5310E3F030E6F882B084DD6721427040C04386FD2DA08C0BD10F54DC5B6233AFE77572E9B93B5B7A5FBC0';
wwv_flow_imp.g_varchar2_table(94) := '033F7CF7E0AA65350FAC585673DD8A65730B81F171C0598D98BEBD4F10C206117609B63FE60128C8448180E66BCE7709BF6F88B7015623AE2C8DC7B6A1B591A535F7AFF88F9B7789A259BF788200BA7A71C523730FAE5836679DB892F037C2E93789806C';
wwv_flow_imp.g_varchar2_table(95) := '5F29D89E1D1B561A0C454AF3DA7DD1707B2C5A022CA734E067E5EDADD121BC2330CC17838A585BA092827A18A06FD047E82BF419FA0E7D88BE449FA26FD1C7E2C85E893E17E1A6781B98B36EB502AFE7EADA4E656C7B92007A0316BFCFF6C413D747D63C';
wwv_flow_imp.g_varchar2_table(96) := '7C4BE39AE5B7D4AF78E4EBE79E7C68CE99358FDF726AE5A3377EF1D4F29AE3F80D770A371E530D03F40DFA087D853E43DFA10FD197E853F46D6FBEB7E679254E04E0154F939D84403708100174030A2511025E418008C02B9E263B09816E102002E80614';
wwv_flow_imp.g_varchar2_table(97) := '4AF236025EB29E08C04BDE265B09812E0810017401843609012F214004E0256F93AD844017048800BA00429BDE46C06BD6130178CDE3642F2160418008C00206450901AF214004E0358F93BD8480050122000B1814F536025EB49E08C08B5E279B09814E';
wwv_flow_imp.g_varchar2_table(98) := '0488003A81A01521E045048800BCE875B29910E8448008A013085A791B01AF5A4F04E055CF93DD84804080084080400B21E055048800BCEA79B29B1010081001081068F136025EB69E08C0CBDE27DB3D8F001180E79B0001E065048800BCEC7DB2DDF308';
wwv_flow_imp.g_varchar2_table(99) := '100178BE09781B00AF5BFF3F000000FFFF7EFC4B3900000006494441540300CF20E6C4342C811D0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10096214472505611935)
,p_file_name=>'icons/app-icon-256-rounded.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_32_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF400000235494441547801EC934D6B13511486DF99346626DFC9D8B43155B0D2565BAD2B3FA8FE055DB8F417F8030417EA46DDF93F041175D32E444484D4620589902AB8';
wwv_flow_imp.g_varchar2_table(2) := '3051F0236DC8E8B492CEB7736E984836E6CE542DC80C9C7BEF39F79D731F5EEE152F5EBAEFEE6688D8E52F02881C881CD891038EA58162272F3934806B6F61E1E434164E4C7B105BA1194201984617C78E4C40961290E504E6672B30CD6E2888500096AE';
wwv_flow_imp.g_varchar2_table(3) := 'A2DDF98EB7EF3EB26877345886F66F000CFD07AE5FB9805B57CF0DC4B5CBE741CE04A508EC403A25E0F05409BA61E1C6ED45DCF482D6544BCA6ED0F3111860E650891DD251BBD85BCC41F142FDD6852008989AECED3101E710184051D2AC75792C83F9B9';
wwv_flow_imp.g_varchar2_table(4) := '0A8E1F9DC07829C36A4A21C5E6204360005D37FBFDCF9E9EC4995307FBB96959FD35EF221080BEBD8946B3D5EFAD6D6E83C22F343EB4401A3FE799B901E886CFCD8CC1B07E5DB44F5F347CFEDA7B7EAEEB7A873B98F534A4E5399C34DC00859C88FD9551';
wwv_flow_imp.g_varchar2_table(5) := '14F339ACBC6CD2BF03F17CB589D26801073C4D36230CECFD2EE10648A724D6675F59C19D7B555896C3721A0CC3C6DD07CB288F17294536DDD3B264C8C00DE0F7898922243989874B35BFC4D6929484E8ED515110FE8203D4D8761CD4EAEFB1D1B1B1F8A8';
wwv_flow_imp.g_varchar2_table(6) := '8EA7D53778F26C0D4B8FEB58F76AAFD71A70BCBB405ADEE07660A3AD6279A58EB6EA6064248178228F17AF5A58ADAD634FA2C06A0456F534A4FDE30036F2B0851C62B138FC2F1E9741E1E7B467230BD2FAB56133B703C31A85DD8F002207FE7F0786BD8E';
wwv_flow_imp.g_varchar2_table(7) := '9F000000FFFFE5CB0DFF0000000649444154030085050A108D7617620000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10096213295735611933)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/files/icons_app_icon_512_png
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000200000002000806000000F478D4FA00001000494441547801ECDD77BC1CE779D8FB674EC3E91DBD7702044014F6224AB26C2B72A12225B9F95C25BAB1753FB6927BAF6FCAC7CE3F8E937B6D458E23C94D76';
wwv_flow_imp.g_varchar2_table(2) := '644B8A4C298A2446122991113B4800AC003B00820544215149B4D3EBEE669F050F7570CEEEFBCEEECECECECCFB03B938BBF3BEF3BEEFF37D17679E9DB635FFFBE77F94E18101EF01DE03BC07780FF01E70EB3D5023FC4100010410400001C7044448009C';
wwv_flow_imp.g_varchar2_table(3) := '9B7202460001041040800480F700020820800002CE0968C0EC0150051E08208000020838264002E0D884132E0208208080EB0297E32701B8ECC0DF08208000020838254002E0D474132C0208208080EB0253F193004C49F013010410400001870448001C';
wwv_flow_imp.g_varchar2_table(4) := '9A6C424500010410705DE0E7F19300FCDC826708208000020838234002E0CC5413280208208080EB02D3E3270198AEC1730410400001041C1120017064A2091301041040C075812BE32701B8D2835708208000020838214002E0C43413240208208080EB';
wwv_flow_imp.g_varchar2_table(5) := '0233E327019829C26B0410400001041C102001706092091101041040C07581D9F19300CC3661090208208000028917200148FC1413200208208080EB02F9E22701C8A7C232041040000104122E400290F009263C0410400001D705F2C74F0290DF85A508';
wwv_flow_imp.g_varchar2_table(6) := '2080000208245A800420D1D34B700820800002AE0B148A9F04A0900CCB11400001041048B0000940822797D010400001045C17281C3F0940611B4A10400001041048AC00094062A796C010400001045C1730C54F0260D2A10C010410400081840A900024';
wwv_flow_imp.g_varchar2_table(7) := '7462090B01041040C0750173FC2400661F4A11400001041048A400094022A795A010400001045C17B0C54F026013A21C010410400081040A9000247052090901041040C075017BFC240076236A2080000208209038011280C44D29012180000208B82EE0';
wwv_flow_imp.g_varchar2_table(8) := '277E12003F4AD44100010410402061022400099B50C24100010410705DC05FFC2400FE9CA885000208208040A204480012359D048300020820E0BA80DFF84900FC4A510F01041040008104099000246832090501041040C07501FFF19300F8B7A2260208';
wwv_flow_imp.g_varchar2_table(9) := '208000028911200148CC5412080208208080EB02C5C44F02508C167511400001041048880009404226923010400001045C17282E7E1280E2BCA88D0002082080402204480012318D048100020820E0BA40B1F19300142B467D0410400001041220400290';
wwv_flow_imp.g_varchar2_table(10) := '804924040410400001D7058A8F9F04A07833D640000104104020F6022400B19F42024000010410705DA094F849004A51631D041040000104622E400210F30964F80820800002AE0B94163F0940696EAC85000208208040AC054800623D7D0C1E01041040';
wwv_flow_imp.g_varchar2_table(11) := 'C0758152E3270128558EF510400001041088B10009408C278FA12380000208B82E507AFC2400A5DBB126020820800002B115200188EDD431700410400001D705CA899F04A01C3DD645000104104020A6022400319D38868D00020820E0BA4079F1930094';
wwv_flow_imp.g_varchar2_table(12) := 'E7C7DA082080000208C45280042096D3C6A011400001045C1728377E12807205591F010410400081180A9000C470D218320208208080EB02E5C74F0250BE212D208000020820103B011280D84D19034600010410705D2088F849008250A40D0410400001';
wwv_flow_imp.g_varchar2_table(13) := '046226400210B30963B80820800002AE0B04133F0940308EB482000208208040AC04480062355D0C1601041040C07581A0E22701084A927610400001041088910009408C268BA12280000208B82E105CFC2400C159D212020820800002B111200188CD54';
wwv_flow_imp.g_varchar2_table(14) := '31500410400001D705828C9F0420484DDA4200010410402026022400319928868900020820E0BA40B0F1930004EB496B082080000208C44280042016D3C42011400001045C17083A7E1280A045690F01041040008118089000C4609218220208208080EB';
wwv_flow_imp.g_varchar2_table(15) := '02C1C74F0210BC292D2280000208201079011280C84F11034400010410705DA012F193005442953611400001041088B8000940C42788E12180000208B82E5099F849002AE34AAB082080000208445A800420D2D3C3E010400001045C17A854FC24009592';
wwv_flow_imp.g_varchar2_table(16) := 'A55D041040000104222C400210E1C961680820800002AE0B542E7E1280CAD9D2320208208000029115200188ECD430300410400001D7052A193F09402575691B010410400081880A900044746218160208208080EB02958D9F04A0B2BEB48E0002082080';
wwv_flow_imp.g_varchar2_table(17) := '402405480022392D0C0A01041040C075814AC74F02506961DA4700010410402082022400119C14868400020820E0BA40E5E32701A8BC313D2080000208201039011280C84D09034200010410705D208CF84900C250A60F0410400001042226400210B109';
wwv_flow_imp.g_varchar2_table(18) := '61380820800002AE0B84133F094038CEF482000208208040A404480022351D0C0601041040C07581B0E22701084B9A7E1040000104108890000940842683A12080000208B82E105EFC2400E159D3130208208000029111200188CC5430100410400001D7';
wwv_flow_imp.g_varchar2_table(19) := '05C28C9F04204C6DFA4200010410402022022400119908868100020820E0BA40B8F1930084EB4D6F082080000208444280042012D3C02010400001045C17083B7E1280B0C5E90F0104104000810808900044601218020208208080EB02E1C74F0210BE39';
wwv_flow_imp.g_varchar2_table(20) := '3D2280000208205075011280AA4F01034000010410705DA01AF1930054439D3E114000010410A8B2000940952780EE11400001045C17A84EFC2400D571A757041040000104AA2A400250557E3A4700010410705DA05AF19300544B9E7E114000010410A8';
wwv_flow_imp.g_varchar2_table(21) := 'A200094015F1E91A01041040C07581EAC54F02503D7B7A460001041040A06A02240055A3A7630410400001D705AA193F094035F5E91B0104104000812A09900054099E6E11400001045C17A86EFC2400D5F5A777041040000104AA2240025015763A45A0';
wwv_flow_imp.g_varchar2_table(22) := 'FA02A9C971D147F547C208107053A0DA519300547B06E81F81900574A37FE9C2DB32F5E8BBF08EA45213218F82EE1040A0DA022400D59E01FA47204481898911E9BB7442340998EA7672724CFA2EBE235A36B58C9F0820506981EAB74F0250FD39600408';
wwv_flow_imp.g_varchar2_table(23) := '842230313E2C03974E4B269D9ED59F2ED332AD33AB900508209048011280444E2B412170A5C0F8D8900CF46537FE99D91BFFA99A996C99D6191F1B9C5AC44F0410A89040149A250188C22C3006042A2830363A2083FD672493C9587BD13A83FD6745D7B1';
wwv_flow_imp.g_varchar2_table(24) := '56A6020208C45A800420D6D3C7E011300B8C0C5FCC6EFCCFFADAF84FB53495048C8EF44D2DE2270208042A108DC64800A2310F8C0281C0058606CFC9F0E0F992DB1D1A784F86872E94BC3E2B228040B4054800A23D3F8C0E81920474E33D3A7CA9A475A7';
wwv_flow_imp.g_varchar2_table(25) := 'AF34924D00B4ADE9CB788E0002E50944656D1280A8CC04E3402020013D861FE4EE7B6D6B70E0DD8046473308201015011280A8CC04E340200001DDF8FB3D81AFB5B949F4E1A7DBB1917E614F801F29EA206013884E39094074E6829120509640511BFF96';
wwv_flow_imp.g_varchar2_table(26) := '66F9F087AECD3D5AB3CFFD743C3AD227EC09F023451D04E2214002108F7962940818058ADAF8B76637FEB7ED90C6C686DCE3C3D9E7ADD965C60EDE2F1CCBEE092009781F831F08942010A5556AA23418C6820002C50B14B3F16F6F6F950FDF766D6EC33F';
wwv_flow_imp.g_varchar2_table(27) := 'D5932602BAACA824A0FFECD4EAFC440081980A9000C474E21836022A30D077C6F74D7B74E37FFBADDBA5714EBDAE7AC543976912A075AE2828F042CF33D0C4A340318B114020AF40B4169200446B3E180D02BE057403ECF7B6BD9D1DEDA21BFF390DB337';
wwv_flow_imp.g_varchar2_table(28) := 'FE531D6A12A0753A3ADAA616197FE69200AE0E301A51884094054800A23C3B8C0D8102027A831FDD001728BE62715767877CE8D66D62DAF84FADA0756ECFEE25F09D048CF473B3A0293C7E226011885A310940D46684F120601118CD6E7447862F5A6A5D';
wwv_flow_imp.g_varchar2_table(29) := '2ED68DFFEDD98D7F437DDDE5053EFED6BA9A04E8BA3EAA8BDE2CC86F32E2A73DEA20804038022400E138D30B028108E8D7F50E0FBEE7ABAD9EEEAEEC6EFF6D525757EBABFEF44A9793806DE2370918CA1E0A98181F99DE04CF1140E00A81E8BD200188DE';
wwv_flow_imp.g_varchar2_table(30) := '9C302204F20A4C4E8E899EF4A75FD693B7C2B485BAF1BFED966B4ADAF84F35A38983EE3DD0B6A69615FAA9631AE83F2D3AC64275588E0002D112200188D67C301A04F20AA452133270E9946432E9BCE5D317F6F6764B6EE35F5BFC27FFE9EDE8734D02B4';
wwv_flow_imp.g_varchar2_table(31) := '2D5F49403A9D1DE36949A72675551E0820304D208A4F4900A2382B8C09816902E9744A06FAB21BD6ECCF698BF33ED5B3FD6FBD698BD405B0F19FEA40DBBAEDE66BA4DDC7D501E9F4A4F4F7F94B54A6DAE727020854478004A03AEEF48A802F814C2693DB';
wwv_flow_imp.g_varchar2_table(32) := 'F8A726C7ADF51B9B1AE5D6EC865A37D8D6CA4556C8ED09B8E91A696A6CB4AEA963D54315D68A5440C0198168064A0210CD79615408E404F4E4BAC989D1DC73D35F75F575F2A19BB74AE39C0653B5B2CA9A1AE7C8ADB76C955A1F7B1726C687F9F2A0B2B4';
wwv_flow_imp.g_varchar2_table(33) := '591981CA0B900054DE981E102849402FF5F373799DE77972CB0D5BA5BDADA5A47E8A59A923DBC74D376C11CFF3ACAB8D8EF4893EAC15A98040C205A21A1E094054678671392DA09FA0F5FA7A3F083BB65D2D737B3BFC540DA4CE8279DDB27DEB065F6D0D';
wwv_flow_imp.g_varchar2_table(34) := '0F9E9389092E0FF4854525044216200108199CEE10B009A4F48CFFFE33A2C7FF6D75D7AF5D292B96CDB7550BBC7CE5F285B276ED0A6BBB1AC360DF19AE0CB04A5121B902D18D8C0420BA73C3C81C14C864F452BA539249DB2FF75BB4709E6CBA7AA554EB';
wwv_flow_imp.g_varchar2_table(35) := 'CF96AB57C9E245F6E4239D4EBD7F6540A65A43A55F0410C82340029007854508544B40CF9ED73D00B6FEBBBB3BE586EBAE162FFB9FAD6EA5CAB5EFEBAFDDE8EB6E817A65C0205F215CA9A9A0DD080B4479682400519E1DC6E694C0901E2F1F1FB6C6DCD4';
wwv_flow_imp.g_varchar2_table(36) := 'DC28B7DCB8456A6BAAFFCFB7B6A6466EB9E91A696E6EB28E5BBFB97064C8DF7718581BA3020208942D50FDDF206587400308C45F607C6C4846872F5903A9CF5DEEB7DDD737FB591B0BA8827E8DF06D376F151D9BADC991E10B32C17706D898284F8C40B4';
wwv_flow_imp.g_varchar2_table(37) := '03210188F6FC303A0704D2A949191C386B8DB4A6A6566EB9799BB4B5DA3F6D5B1B0BB8425B6B73764FC036A9C9EE1130359DC964440F05E87901A67A94218040E50548002A6F4C0F08180506F48C7F1F27FD6DD9BC4E7ABBDA8D6D55B3B0B7BB5D365FBD';
wwv_flow_imp.g_varchar2_table(38) := 'CE3A84743A9BF0703E80D5890AF117887A042400519F21C6976881E1A1F332E9E34E7F7AC6FF9A958B226FB176F56259307FAE759C13E3C332E2E39087B5212A208040C902240025D3B12202E5094C4C8CF83AEEAFF7DFBF76BBBF1BEF9437A260D6BE6E';
wwv_flow_imp.g_varchar2_table(39) := 'C706699C33C7DAD888263F9363D67A5440209E02D11F350940F4E788112650209D4EC960DF59D163E2A6F03CCF931B6FD82C0DF575A66A912A9BD3502F375CB7593CCF338E4B631FEC3B9335B0DFF3C0D8108508205092000940496CAC84407902974F84';
wwv_flow_imp.g_varchar2_table(40) := '9BB436B2E1AAD5D213E1E3FE8502D05B135FB57E55A1E20F96A752137C69D0071A3C4992401C62210188C32C31C64409E817E4E831705B50BD3D5DB261FD325BB5C8966F5CBF5C7AB231D806A85F78A40F5B3DCA11402058011280603D690D01A3807EE2';
wwv_flow_imp.g_varchar2_table(41) := '1D1E3C6FACA3850D0D0DD9DDE8D5BDD39F8EA39C87E77972E3759B7CDD1F6078F09CE8619172FA635D04A223108F919000C4639E186542048606DEF575CCFB866B374953A3FD44BAA8B3343536C8753B365987A91B7F4D02AC15A9800002810990000446';
wwv_flow_imp.g_varchar2_table(42) := '49430898052EEFFAB77F35EEDAD5CB65FEBC2E7363312A5DB4A04756AFB21FCAD0C3007A47D600E3630000100049444154C41885C65011C82B10978535711928E34420CE02E9D4A4E835FFB6183A3ADA64D3D5F693E76CED44AD7CCBA6D5D2DEDE6A1DD6';
wwv_flow_imp.g_varchar2_table(43) := 'D0C07B1C0AB02A510181600448008271A415048C0283BAEBDF72B7BFDADA5AB9E986687CC98F3198120A6B6B6AE4A6EBB3B1656334AD9E4EFB4B944C6D5086407505E2D33B09407CE68A91C65440776DFB39EB7FFBD68DD2DADC18D328EDC3D6EF30D8BA';
wwv_flow_imp.g_varchar2_table(44) := '65BDB5E2D848BFE84D92AC15A98000026509900094C5C7CA089805D2E994F839B96DE18279B27CE93C736309285DB97CA1CC9FD76B8D64A85F4F96CC58EB510181A809C4693C2400719A2DC61A3B01DDF86B12601A784D8D27DBB7DABF44C7D4469CCAB6';
wwv_flow_imp.g_varchar2_table(45) := '6F5B2F1AB369CCA9D4848C0C5D3055A10C0104CA142001281390D5112824A0BBB175F77FA1F2A9E59B36AE4DC4257F53F1D87EB63435CAC60D6B6DD56474E492682260AD480504222310AF819000C46BBE186D8C04F48C76DB70F5CCF8B5AB97D8AA25AE';
wwv_flow_imp.g_varchar2_table(46) := '7CDDEAC5D6AB02F4BB02FC18260E87801008498004202468BA714B6074A44F5293E3D6A0AFDDBED1FAA539D6466258A1A6A646AEDDB6D13A723D79927B035899A8101181B80D8304206E33C678232FA0C7FC8787ECB7FB5DB572897477B6453E9E4A0DB0';
wwv_flow_imp.g_varchar2_table(47) := 'BBAB4D56AC586A6D5ECFA3D0BD01D68A54400081A20448008AE2A23202768191A10B92B15CF3AFF7FADFB471B5BDB184D7D8BC71A5A885294C3D0F6064F8A2A90A65084440207E43200188DF9C31E2080B4C4E8C89EEFEB70D51AF876FA8AFB3554B7CF9';
wwv_flow_imp.g_varchar2_table(48) := '9C867AD9B2699D35CED1614E08B422510181220548008A04A33A022681A181774DC5B932FD9ADF654B927FCD7F2E581F7FAD58365F7A7BBB8D353399B40CFBF816456323142250418138364D0210C75963CC9114D04BFE2627C78C63ABA9F1444FFC3356';
wwv_flow_imp.g_varchar2_table(49) := '72B0F0DA6D1B444F0C34853E3E36289313A3A62A9421804011022400456051150193801EFB37956BD9FAF5ABA4B525B9B7FBD5184B79A8C9BAB52BACAB0EFB38B9D2DA081510085C209E0D9200C473DE1875C4044647FA454F56330DABB5A545AE5ABBCC';
wwv_flow_imp.g_varchar2_table(50) := '54C5E9B20DEB974B737393D160627C44F461AC44210208F8122001F0C54425040A0B6432191919B6DFB65677FDD7D6F04FAE90646D4D8DECF0716F00F60214126479B504E2DA2FBF8DE23A738C3B320263A3FD924E4D5AC7F3F89E7DF2C37B1EE56130D8';
wwv_flow_imp.g_varchar2_table(51) := 'F3E4F356473D0F607C6CC85A8F0A08206016200130FB508A805120F7E97F886BD48D4815281C19B2EF71A940B73489401E81F82E220188EFDC31F20808E835FFE9B4FDD37F04869AA821E8D516E36383898A896010085B8004206C71FA4B8C4026939651';
wwv_flow_imp.g_varchar2_table(52) := 'EE5057B5F91C662F40D5ECE9F8E702717E460210E7D963EC5515D033FFD3E95455C7E072E7A9C97119E75C0097DF02C45EA60009409980ACEEAEC0E8C82577838F48E423EC8189C84CB83A8C78C74D0210EFF963F4551218CF1E7FF673E67F9586E74CB7';
wwv_flow_imp.g_varchar2_table(53) := '7A45C0A4E5EE8BCE60102802450A9000140946750454608433FF9521128FD161F6C44462221C1C44DC43260188FB0C32FED005262646C4F6A9F3631FD926777FF75FF308C0E0A3B76F35CE317B638C3C142250508004A0200D0508E417181DEECB5F306D';
wwv_flow_imp.g_varchar2_table(54) := 'E9273FB17DDA2B9E962370C727B61957CF6432323A629F136323142250B440FC57200188FF1C12418802A9D4844C8C9BEF4277EDB675B278514788A34A7657CB9674C9F6AD6B8D418E8EF649269336D6A1100104AE142001B8D28357081805F4936626FB';
wwv_flow_imp.g_varchar2_table(55) := '89D354E98E5FD9612AA6AC04813B3E6136CDA4D332363A5042CBAC8240690249588B042009B3480CA10864B29F30C746FB8D7DAD5AB150366D5868AC4361F1025BAE5E24CB97CD37AEA8C999B10285082070850009C0151CBC40A0B0C0D8E8A0E827CDC2';
wwv_flow_imp.g_varchar2_table(56) := '35443EF5EB379A8A292B43E0D316DBD4E4B8E8099A6574C1AA08F814484635128064CC2351842060FBF4DFDBDB21375DB73C8491B8D9C52D37AC94EEAE7663F0631C0630FA5088C074011280E91A3C47A080809EFC3739315AA0F4F2E24FFEEA8D5253C3';
wwv_flow_imp.g_varchar2_table(57) := '3FA9CB1AC1FFADB677FCEA0DC686C7752F4DF6508DB112850894299094D5F96D959499248E8A0A8C8D988FFD3734D4CB476F5D57D131D0B8C8C76EBF4AEAEBEB0A525C3E4F8393010B025180C03401128069183C45209F4026939131CBC97FB7DE74B534';
wwv_flow_imp.g_varchar2_table(58) := '35D5E75B9D65010A34678D6FBA7EA3B1C5310E03187D282C572039EB930024672E89A442027ADD7FDAF2AD7F1FFD9079A354A1A139D9EC2FDC6EB6D643357A42A09338048D4011022400456051D54D01FDDA5F53E40BE677CBC6F5E64BD44CEB53569CC0';
wwv_flow_imp.g_varchar2_table(59) := 'E68D0B454FB834AD356AD963635A9732044C02492A230148D26C124BE002E9D4A44C8C0F1BDBFDC58F6C15CFF38C75280C4EC0F33CF9A58F9A6F0F3CCE6180E0C06929B1022400899D5A020B4260DC72DB5F3D33FD173EB43E88AE68A308818FDC6A36D7';
wwv_flow_imp.g_varchar2_table(60) := '43361396C4AD88EEA88AC0FB02C9FA410290ACF9249A80056C27946DBF668D74743405DC2BCDD9047A7B5AE49A2DAB8DD5C6C7CCDFD9605C9942041C10200170609209B13401FD14A9279499D6FED0ADE613D24CEB52569EC0EDB798EDC7C706CBEB80B5';
wwv_flow_imp.g_varchar2_table(61) := '11982190B4972400499B51E2094CC0B601F13C4F765CB334B0FE2AD9D0D0D0B83CFBFC71F96F77ED952F7FF521F9BD3FB84B3EFBDB5FCB3DF4F957FEEAE15CD9DE6C1DAD5BC9B104D5F6F5DB961BCFBDD0046E627C24A8EE680781C4099000246E4A0928';
wwv_flow_imp.g_varchar2_table(62) := '28015B02B063DB5AD1EBD283EA2FE876FAFA47E507773F97DBD8FF93DFFAAAFCF1577E243FFAC913F2C4D307E4CDB74EC8C0E070EEA1CFF73CB53F57F6C56C1DADFB6FFFFD5DB975B58DA0C715547B2D2D0DB22D7B08C6D49E6D0E4DEB5286C09502C97B';
wwv_flow_imp.g_varchar2_table(63) := '450290BC3925A20004F4D3A36DF7FFCD37984F440B60182535D1D7372A7FF7BDA7E5B77EE7EBF2FD1FEE16DDC017DBD01B874FE4D6D536EEFCFE3312D544E0E6EBCD775F24012876E6A9EF920009804BB34DACBE0574C3A177002CB482E77972DDB66585';
wwv_flow_imp.g_varchar2_table(64) := '8AABB6FC670F1F947FF62FFE5A7E72DFD3323E3151F638B48D7BEE7D4A7EFB5F7E431E78F450D9ED05DDC0F5DB577018206854DACB2B90C4852400499C55622A5B4013005323D76C5E2DAD2D734C55422D4BA7D3F2D5AFEF94AFFFDD8315E9776C6C5CFE';
wwv_flow_imp.g_varchar2_table(65) := 'E6BFDE2F5FFBD62ED1BE2AD249098DB6B5CD912D9B561AD71CB75CCA695C994204122C400290E0C925B4D2043299B4D877FF9B773D97D673696B0D0D8FCBBFFBC2DDF2E8E32F95D640116B3DF8C8F3F21FFED34F6438DB6711AB55B4EA4DD79B0FC54C70';
wwv_flow_imp.g_varchar2_table(66) := '396045FDDD683C9951920024735E89AA0C8189F111C96432055BD09BFFE8AEE78215422CD04FE3FFF12BF7CAABAF1D0FADD7FD078ECA1FFFF9CF22B327E0C61D2B44E7A410402A3521FA2854CE72045C1520017075E689BBA0C0C4C448C1322D58BB66B1';
wwv_flow_imp.g_varchar2_table(67) := '74B437EAD3AA3FFEF6CE3DF2EAA1F036FE5301EF3F7044FEEE7BCF4CBDACEA4FBD11D3EA558B8C63D0A4CE588142040C02492D220148EACC1257C90213965BC86EDDBCB2E4B6835CF1A1C75E13DD25EFB7CD398D0DB265F31AF9D41DB7C9E73EFB71F99D';
wwv_flow_imp.g_varchar2_table(68) := '7F7E47EEF1B9CFFEB2FCFD5FBF4D366D5A2D5AC76F7BF7FEEC19D9B9E70DBFD52B5ACF36279396A4AEA283A37104222A400210D1896158D511D0CBFF6C5F25BB79E392EA0C6E5AAF172E0ECB37EE7C78DA92C24F5B5B9BE5173F7AADFCF3CF7D427EE923';
wwv_flow_imp.g_varchar2_table(69) := '5B64D5F2B9D2D5D92C0DF5B5B94757678BAC5E31573EFED16B72757EE1233BA4B5A559FCFCF9DA371F94BE3EF31E133FED945B67F3D5E639B12575E5F6CFFA4916486E6C2400C99D5B222B41C0B6A16868A897F56BE696D072B0ABFCE8A72FC8848FCBFC';
wwv_flow_imp.g_varchar2_table(70) := 'D6AE592ABFF14F3F26D76C5A2675B5F67FEE5A67DBE6E5F21B9FFD98ACCBAE6B1BB58EE147F7BD68AB56F1F2ABD6CC93BABADA82FD686237393956B09C02045C14B0FF46705185989D15B01DFFDFB47185714313069C7EFA7FE091E7AC5DDD7AF366F9F5';
wwv_flow_imp.g_varchar2_table(71) := '4F5C2773EAEBAC756756D0757E2DBBEECD376E9A5934EBF5FD0FED131DD3AC821017D4D7D7CAD51B961B7B9C18AFFE9E0AE300298CA4409207450290E4D925B6A20526C6868DEB6CD964DEC818570EA8F0BE07F75BCFC0DF74F56AB9F1DAB5E295D1A7AE';
wwv_flow_imp.g_varchar2_table(72) := 'AB77DADBB2698DB195C9C994FCEC9103C63A61146EB97A85B11BCE0330F250E8A000098083934EC8F905F452B1747A327FE1FB4BB744E0F8FF337B5F7B7F34F97F2C5B3A4F7EE9A35BF21796B0F4631FD92C2B962F30AEF9D4B3E63119570EA870CBA625';
wwv_flow_imp.g_varchar2_table(73) := 'C6966C7B778C2B53E8A840B2C3260148F6FC125D110229CB31E2B6D66659B1ACAB881683AF7AF2549F9C3E7BDED8F0B5DBD74B8DA79FDF8DD57C176A5BDBB79AF7029C3E7D4E4E9FE9F7DD66252AAE5ED1234DCD85EFCE9849A7B91F4025E06933B60224';
wwv_flow_imp.g_varchar2_table(74) := '00B19D3A061EB4C0E484F924B10D572D13CF0B6EC35ACAF8F7BD78CCB89A9EBDBF7279F02729AE5C3E4F5A5B9B8C7D3FF752F8F723983E20CFF364E37AF3219AC989D1E9ABF01C01A340D20B4900923EC3C4E75BC07696F8BA350B7DB755A98A878F9C31';
wwv_flow_imp.g_varchar2_table(75) := '36BD76ED52A9448AA26DAE5DBDCCD8F79163678DE56114AE5D6D3E54919A1C0F6318F481402C04480062314D0C320C01DBA7C3D52BE685310C631F172E0E18CBD7AF5D6C2C2FA770ED6A730274E1E26039CD07B2EEEA15F38DED4C4EB207C00844E13481';
wwv_flow_imp.g_varchar2_table(76) := 'E43F250148FE1C13A10F013D013093491B6BAE5915FCAE756387790A2F5D326F64E7F6B6E6592B9845F3E7B51B1BB22527C695032A5CB5A2C7D8D2A4E53C0FE3CA14229030011280844D28E1942660FBF4DFDBDB21AD2D0DA5351EE05AE72E984FB4ABAD';
wwv_flow_imp.g_varchar2_table(77) := 'A9DC3FE95ACB8D842E5E32EF9D0890A16053DD5DCDD2D5593851E144C0827414CC1070E1658D0B41122302368194E5D8F0BAD5E64BCC6CED07555E575FF86E7741F551A89D54DABC87246DF806C5426D5662F9DA358B8CCDDA923DE3CA14229020011280';
wwv_flow_imp.g_varchar2_table(78) := '044D26A1942E30693936BC6695F9E4B2D27B2E6ECDEEAEC29F6EB5A5E191CA9DE4363C3CA15D147CF458C65670C5800B6CE72AA42CC95EC0C3A1B9580AB83168120037E699282D02939663C36B56CDB3B4104E717797F918FFB9F395DB0D6FDBC5DFD363';
wwv_flow_imp.g_varchar2_table(79) := '4E4EC21112596D3959D336D7618D937E10A8B6000940B56780FEAB2E904EA72463D9BDBD645167D5C7A903E8E96AD31F051FEF9C3857B0ACDC82A3C7DE3336611B9B71E5000B972E36CF553A65DE9311E050682AA602AE0C9B04C0959926CE8202A99479';
wwv_flow_imp.g_varchar2_table(80) := 'B7B97E0360576753C1F5C32C58B5D27C99DBD163A72B369C23C74E1ADB5E6D199B71E5000B7B7B5AA4B6B6F0B91229128000B5692ACE022400719E3DC61E88403A65BEFFFFD2C57303E9278846765C63BED3DDB9F397E4ED131782E8EA8A368E1C7F4FFA';
wwv_flow_imp.g_varchar2_table(81) := 'FACC97205EBF63C515EB54F3C592C5BDC6EE539C0760F471BBD09DE84900DC996B222D2090B2EC0158BCC8BC3129D06C45162F5AD02E0B1798AF75DFB9EB45994C99CFD82F6670E3132979E4B1E78DAB2C5B3A5F7ABB5B8C75C22C5CBCD03C6729F60284';
wwv_flow_imp.g_varchar2_table(82) := '391DF41551819A888E8B6121109A406AD27C4C78D1C2AED0C6E2A7A31BAFBBCA58EDDCF93ED9B93BB8AFE77D2CDB567FBFF96B926FBC6EBD714C61172E5C609E331280B067243EFDB93452120097669B58F30AA42C7B00162D309F5496B7D10A2EFCB58F';
wwv_flow_imp.g_varchar2_table(83) := '6F96BA3AF33FDD57F61F96679E7BB3EC513CF3DC1BB2FFE05BC6761AEAEBE4577E6993B14ED8858B2D495B9A3DB3162DE5000010004944415400614F09FD4550C0FC5B248203664808042D90B69C03B0607E342E6F9B8ABBABB3593EF9AB374FBD2CF8F3';
wwv_flow_imp.g_varchar2_table(84) := '89A7F6CB4FEFDF276313E6731CF235A0EBDCF33FF7CA134FD9F7247CEA8E9BA5BDAD315F33555BB6607E87B1EF9425E933AE4C618205DC0A8D04C0ADF926DA1902E9ECC6DFF61D000B2CF7C09FD164282F3FF5ABDBA4B5D57E65C21B6FBE23777EF75139';
wwv_flow_imp.g_varchar2_table(85) := 'F68EFFCB038FBE7D4EBEFDDD9D72F8AD13D6585A5A1AE58EBF778DB55ED81516CC335F2E99620F40D853427F1114200188E0A430A4F004D269F3A7E3FAECEEEDB6D639E10DC8674F4D4DF5F2FF7EFE577CD5EEEF1F921FDEBD5BFEC73D4F660F0B1CCE26';
wwv_flow_imp.g_varchar2_table(86) := '03E7E5E2A561D193FBF471B16F38B7EC99E70FE7EAFCE89EDDD2D76F3EE37FAAE37FF57FFD9A3436D64FBD8CCCCFCE8E46A9317C2F42269D8ACC58194874045C1B0909806B334EBC5708A42D1B826ECB8D77AE682CE417D76E5B269FBEE356DFBD1E7FFB';
wwv_flow_imp.g_varchar2_table(87) := '6C7697FE2BD96460977CF3DB0FC85FFC979FE41EDFBCF381DCB2279E7C45B48EDF06FFF13FB85D765CB3D46FF550EB799E275D86BB26663219B1CD7DA803A63304AA204002500574BA8C8E806D23D0D569DE955CED483EF30FAF936B36AF0A7D18DBB7AE';
wwv_flow_imp.g_varchar2_table(88) := '957FF4C9EDA1F75B4C875D1DE6B9632F40319A2ED4752F461200F7E69C88A7096432E65DC1EDEDCDD36A47EFA9E779F2BBBFF309D9BC69656883D384E3DFFCDF1F17CFF342EBB3948E3A3BCCF725485BE6BE943E59078138099000C469B6186BE002B63D';
wwv_flow_imp.g_varchar2_table(89) := '00DD86DDC8810FA6C4065B9A1BE43FFCDB3BE4973FB6A3C416FCAFF66B9FB841FEE0F7EE90E6A6E81DF79F194567A73901600FC04C31B75FBB183D09808BB34ECC1F08D836029D1DD1DE033015889EF0F6F9DFB85D3EFFB9BF27B5B5C1FFB3AEABAB957F';
wwv_flow_imp.g_varchar2_table(90) := 'F3FF7C527EF333B7484D4DB43FF94F9974DAF60058CEFF986A879F08245520F8DF14499522AE440AD8F600D836225143F9E58F6E90BFFCCF9F935FFC85EDD944A0F017E2F81D775D5D9D7CFC17AF95AF7EE97372EB8DE19F6BE0779CF9EAD9E6CE36F7F9';
wwv_flow_imp.g_varchar2_table(91) := 'DA64595205DC8C8B04C0CD7927EAF705D296CB00DBDB9ADEAF199F1F0BE7B7C9BFF8CD0FCBD7FFE2B7E41F7CF256E9E931DF14275F6473E776CAFFF6E90FC937FEF2B7E4B7FFD98764FEDCD67CD522BDACA3DD3C77B6BD3F910E8EC12110800009400088';
wwv_flow_imp.g_varchar2_table(92) := '34115F814CC6FCA539ED11BBC35D31D25D9D4DF2997F78BD7CE32F3E27FFF90F3F9BBB6470E386E5A25FDCD3D3DD9E6BAAA1A14EF4F9F265F345CB3461F8F217FE0FF9DB3FFB4DF9C79FBA563ADA1B73F5E2F8976DEE6C731FC79819736902AEAE55E36A';
wwv_flow_imp.g_varchar2_table(93) := 'E0C48D404E2093FBBBE05F7A825DC1C21815AC59D52BFFE41F5D2F5FF8FD4FCB9FFFF167E41B7FF97FCADDDFFDD7F2836FFD4EEEF99F7DF133B9324D1856AD307FDB605CC26E6936DFC08904202E33C9382B254002502959DA8D89803903A8AF2BFF387A';
wwv_flow_imp.g_varchar2_table(94) := '4C201237CCFA7AF3AFB74CC63CF7890321A00202EE2E36FF0B71D785C811C809D4D59300E42062F8972D79CB580EFFC43064868C405102240045715139690219317F0AACABC0257549338C6A3CD6E48D3D00519DBA50C7E5726724002ECF3EB18B65FB2F';
wwv_flow_imp.g_varchar2_table(95) := 'B6DDC8104657A0BECEFCEBCD96FC4537324686403002E67F21C1F4412B08C456803D00B19D3AA9B79CBFC12180F8CE6D702377BB251200B7E7DFF9E86D1B01EB6E64E705A30B5067390950380410DDC96364A108900084C24C27711568A8E724C0B8CE9D';
wwv_flow_imp.g_varchar2_table(96) := '7D0F80F9FC8FB8C6CDB8FD0BB85E9304C0F57780E3F17B9EF9BEF69393E61B0539CE17E9F0D369DB06DE561EE9F0181C02650B9000944D4803B116B0240023A313B10ECFE5C18F8C58E6CE32F72EDBB9113B519200F01E705AC013F33F01EB4644F81355';
wwv_flow_imp.g_varchar2_table(97) := '81614BF2E659E65EF88340C205CCBFFD121E3CE121E079E64300C3B64F91104656606464DC3836CF33CFBD71650A632F4000420ACC9BC07101CB46804300F17D7F589337CBDCC73772468E803F01F600F873A25642053CF18C91D93E451A57A6B0AA0223';
wwv_flow_imp.g_varchar2_table(98) := 'A3B63D00FCFAABEA0455B5733A5701FE05A8020F77052C9F026D1B1177E1A21FB96D0F80E79993BFE847C80811284F8004A03C3FD68EB980E799FF090C5B8E23C73CFC440F7F7878CC121F09800528B1C5047659C0FCDBEF721DFE4620B1029E67DE080C';
wwv_flow_imp.g_varchar2_table(99) := '0F9B77232716260181D9E6CEF3CC739F00024240C028400260E4A130E902EC0148EE0C0F8F98F7007835DCE531B9B36F8A8CB22901128029097E3A29505353678CDBBE1BD9B83A855514B0ED01A82101A8E2ECD07514044800A2300B8CA16A029E652360';
wwv_flow_imp.g_varchar2_table(100) := 'FB1459B581D3B155C036773596E4CFDA01156229C0A07F2E4002F0730B9E392860FB14C81E80F8BE298686478D83B7CDBD71650A114880000940022691104A17B07D0A1C1A316F444AEF99352B2D3034649E3BCFB2F7A7D2E3A3FD6A08D0E774011280E9';
wwv_flow_imp.g_varchar2_table(101) := '1A3C774EC0F629F0C28541E74C9212F0858B03C6506A380460F4A130F9022400C99F6322340878964F8167CE5E90749AAF04361046B2687232253A77A6C1D9923FD3BA94C55380515F29400270A507AF1C13D08D80E952C0542A25EF9E1B724C25FEE19E';
wwv_flow_imp.g_varchar2_table(102) := '7DD7BCE7C6F33CF12C37818ABF0211206016200130FB509A7081C98931C964CC9FF04F9FE94FB842F2C23BFDAE79CE32998CE8DC272F72222A2C40C94C0112809922BC7646403700037DA7ACF19E3A7BC95A870AD112387DC63E67FD7D274902A2356D8C';
wwv_flow_imp.g_varchar2_table(103) := '266401128090C1E92E1A02531BFF743A651DD0E9D317AD75A8102D81933EE62C934E0B4940B4E6AD92A3A1EDD9022400B34D589270816236FE4A71E2F479FDC1234602A77CCE1949408C2695A1062E40021038290D4659A0D88DBFC672F2D439FDC12346';
wwv_flow_imp.g_varchar2_table(104) := '02274EFA9F339280184D6CC94365C57C022400F954589648815236FE0A71EE5C9FE86565FA9C47F405C6C626E5E225F33D0066464112305384D72E089000B830CBC498DD808FC940DF2949FB38E69F8FEB145702E46389E4B252E72AF3C13901E63B0846';
wwv_flow_imp.g_varchar2_table(105) := '3268066514A030BF0009407E17962648607232BBF1BF54FAC65F294ADDA8E8BA517BBCF0CA09F9FD3FFAB17CF6B7BF967BE8F3970E9C8CDA304B1ECFA9337D25AF7B3909382513132325B7C18A08C4458004202E33C5384B120862E3AF1D9FF6715999D6';
wwv_flow_imp.g_varchar2_table(106) := '8BFAE3A5FD27E50FFFD35D72F0D03119181CCE3DF4F9FFF7C51FC8CB07EC9744463D3E1DDF9977ED97006ABD420F4D02062E9D96C909F60414328AD772465B488004A0900CCB632F10D4C65F214E9D49C6A58077DDFDB48693F7F1831F3F957779DC169E';
wwv_flow_imp.g_varchar2_table(107) := 'F27109A02DA64C462F11644F80CD89F2780B9000C47BFE187D01816237FE4B162F28D0D2E5C549B912E0F83BEF5E0E28CFDF4989F1A4E512C0A54B16E6897EF6A2DC9E80BED31C0E984D13AB250CB6B0000940611B4A622A50CCC6BFB6B6563E7CDB75B2';
wwv_flow_imp.g_varchar2_table(108) := '7EED3263B4478E9E91247C29D0F070E1DDDAFD03C346833814EA1C1D3B76D638D4756B9689CEB9CEBDB162B6309704640F074C8C734E409683FF1326400290B009753D9CD4E4B80CF83CE14F3700B7DDBC5D7A7BDAA5B3A355F47521BFB1F171397A3C19';
wwv_flow_imp.g_varchar2_table(109) := '87010AC59884E5878F9E179DAB42B1E81C7776B6E4E65CE75E5F17AA3BB55C0F070CE89E009280299218FD64A826011200930E65B112D08D7F7F111BFFDB6FDD91DB1068909EE7496F6FB73E2DF878F5F5649C245730C00414BCFA9A798E748E3DF17291';
wwv_flow_imp.g_varchar2_table(110) := '6AE2471290A3E02F470548001C9DF8A485FDF38DFFA43534FDD4A71BFFEEAEB62BEAF6F6745EF17AE68B0387DE99B988D71113386899A3B9BD5D578C9824E00A8EC4BD2020B3000980D987D2180804B1F1D7307BBBDBF547C1C781578F49269329584E41';
wwv_flow_imp.g_varchar2_table(111) := '7505746EF61F3C661C444F77C7AC724D023421D4C47056E18C05994C5A381C30038597B115200188EDD43170152866E35F575F27FA8BBE7BC6277F6D471FDDD904A0A6E6F2EE617D3DF3A127D01D7FA7BC6BCC67B6C9EBE0048E1EBF603CFEAF73DBDDD5';
wwv_flow_imp.g_varchar2_table(112) := '9AB7C3EEEC7B42DF1BC52501F13F69322F46621612884D8004C026447964058ADEF8DFB243F4177DA1806A6B6AA4B3B3B350716EF9A1374EE77EF257F4045E7DDD3C375D5D1D525B53F8579EBE378A4B02CEC8C4384940F4DE098CC8AF40E17F0D7E5BA0';
wwv_flow_imp.g_varchar2_table(113) := '1E02551048A526E4F2097FF663FEB94FFED98D7F5767FE4F7FD3873FF318F1F4327D7EE0D577F4078F080A1C38F4B67154737BCD2779EACA2401AA908C0751D8054800EC46D48898406EE37FF1A4A4D3C16EFC35CCDE9ED9C78875F9D4E3E06BC7A79EF2';
wwv_flow_imp.g_varchar2_table(114) := '334202994C465E3978D43822DB499E532B4F25019A384E2D2BF433933B27803D01857C581E6D01128068CF0FA39B2150CCC6BF5E8FF9FBFCE43FD54D4F77FBD4D3BC3FFBFA06E5C429CE03C88B53C5856F9FB82423C363C611F4F698E776FACAB92420FB';
wwv_flow_imp.g_varchar2_table(115) := 'DE210998AE12A7E78CD58F0009801F25EA4442A0988D7F437DBD7CF8B66BC5CF6EFFE9C135649386F676F3A182436F9C99BE0ACF2320609B93CEF636A9ABAD2D6AA4FADEB9BD8824400F49714E4051C454AEB2000940952780EEFD095CDED57ADAD76EFF';
wwv_flow_imp.g_varchar2_table(116) := 'DC27FFDB7648477B8BBFC667D49AD76B3E567CF0D089196BF0B2DA02076CD7FFCF35CF69A1F1179304681B03FD67444F4ED5E73CAA2740CFFE044800FC3951ABCA027AEDB59F5FACBAF1D74FFEA56EFC35CC1ECB0D815EDA7F44ABF18890C0FE808EFFE7';
wwv_flow_imp.g_varchar2_table(117) := '0BA9982420934E4B7FDFA96CA29ACAD714CB108894000940A4A683C1E413181C7857267CDC873D888DBFF63FD77222A09E0770ECED0B5A954704048E1C3B2FFDFD43C691F458E6D4B872B6702A09D0F758F6A5F1FF746A5206B37B0232196E1A6584AA58';
wwv_flow_imp.g_varchar2_table(118) := '210DFB152001F02B45BDAA088C8EF4C9D848BFB5EF390D0DB963FEE57CF29FEAA4B1B1415A5A9AA75EE6FDF9F4BEB7F22E6761F8024FED35CF456B762E1BE7D4973D304D0274EF527D7D9DB52D4D5887B289ABB5221510A8A200094015F1E9DA2C30313E';
wwv_flow_imp.g_varchar2_table(119) := '2CC383E7CC95B2A5B98DFF874A3FE69F6D62D6FF0B17CC9DB56CFA825D4F1C9CFE92E75514786CF72BC6DE172E9C672C2FA650134CBF49C0D8E8808C0C73C54831BE41D4A50DFF022400FEADA819A2801EEFD713AA6CBB51F5D6ADB7DEB25DDA5ACD9FD8';
wwv_flow_imp.g_varchar2_table(120) := '8B1DFA92C5E604E0ECBB17E4C8710E0314EB1A74FDC347CFC9858BE63D444B1699E7B2D831691270FBADD7FA5A4D13D8F131F3E1095F0D5109810A08900054009526CB17C86DFCD36963439EE7C94D376C91AE8ED2CEF63735DED3DD2E8D8D8DA62AF2F4';
wwv_flow_imp.g_varchar2_table(121) := 'DEC3C6720A2B2FF0D4B3E639686E6E129D4B09F84F67F63D77F38D5B7DB5AA87023219F37BD9574354F2214095620448008AD1A26E2802E36383BE2EA5DAB471AD2C9857DAE55DB6403CF164F9B245C66A7B9E7AD5584E61650532998CEC7AE280B193E5';
wwv_flow_imp.g_varchar2_table(122) := '4B171ACBCB295CB4A047AECEBE076D6DA4D3290E05D89028AF8A00094055D8E9D424303C78DE549C2B5BBA64A1AC5FBB34F7BC527F2D596C3E769C3B0C70CC3ED64A8DCFF5767DEDFEB7CC61B9861BD62D93654BCD89A2F6313A72894B0315A2C20F9A2F';
wwv_flow_imp.g_varchar2_table(123) := '4E8004A0382F6A57586074A44F52A909632FDDDD9D72EDF6AB8C758228D4430B6D6DE6BB02DACE400F621CB4915FE049CBEEFFD6D6E6926F0695BFC7FC4B776C5B2F5D9D1DF90BDF5F9AC91ECE1AE584C0F735F81115011280A8CC04E310DDA53B3274D1';
wwv_flow_imp.g_varchar2_table(124) := '285153532B375E77B5F16B5D8D0D1459B874C902E31A8FEF319F816E5C99C29205F4BDB2E749F395182B962D2EB9FD6256ACADA9916BFF274300001000494441541BAEDB2435D99FA6F534B94D670F0798EA50568E00EB162B400250AC18F52B26309ADB';
wwv_flow_imp.g_varchar2_table(125) := '4D6AFE86BF35AB97497393F9E4BC2007B86CE97C6373E72FF48BEE8A3656A230708137DEB29FFDBF74E9BCC0FB2DD4606B4BA3AC5E693E2495C9A46564882B470A19B23C7C011280F0CDE9318F807E321A19367FFAD71BB05C953DE69A67F58A2D6A6D6E';
wwv_flow_imp.g_varchar2_table(126) := '94CE8E7631FDB19D896E5A97B2D2049E7AF64DE38A7A98A825C4445107B3E1AAE562FBF640BD378026025A9F47B002B456BC000940F166AC5101013DF33F933D4E6A6A7AE3556B44BFADCF54A712654B972D3436BBFBC903B9C317C64A14062690C964E4';
wwv_flow_imp.g_varchar2_table(127) := '89A7CD5760D80EDD043698690D35D4D7CB8675ABA62D99FD3493DD0BA037B89A5DC21204C217200108DF9C1EF3088C5B6E96D2D4DC94DDC56ADE10E769369045CB2C67927318201066DF8DBCF6E67BC69BFF789E27CB9684B7FB7FFAC0D7AC5E2C4DD9BD';
wwv_flow_imp.g_varchar2_table(128) := '46D397CD7C6E7BAFCFACCF6B3F02D429458004A01435D6095C607262D4D8E6359BD6594FB23236504661536383F4F474195BD8B9FB35633985C109EC7ED26CDDDBDB2D731ACABFF77F2923AEADA991CD967B03B007A01459D6A984000940255469B32801';
wwv_flow_imp.g_varchar2_table(129) := 'FD85A8BB460BADD490FD65BE78514FA1E250962FB3DC5066E7AE976468783C94B1B8DCC970D6F8D15D2F1B09965AF6D818570EA070E9E2B9C67301D2E994AF6FB70C6028CE3441A0A509900094E6C65A010A8C8F0F1B5B5B307FAEE89DF98C952A5CB878';
wwv_flow_imp.g_varchar2_table(130) := '61AF789E57B097F1F10979E471F327D3822B53E05BE0C19D876462A2F07D22F452BC25554E003CCF93F9F37A8D318D8FF3FD0046200A431120010885994E4C021396E3FFF3E755F7D3BF8E5DBF4E769EE597FA4F7FB657D2961319B52D1EA509A8EDBDF7';
wwv_flow_imp.g_varchar2_table(131) := 'EF33AE3C2FFB5E69F0F175BDC64602289C3FB7CBD88AED3D6F5C99C21902BC2C558004A05439D60B4440EFFAA70F53630BE69B7F999AD60DB26CD50AF32D5FF55BE99EDE773CC82E696B9AC0537B8FC9C54BE66FFE5BBD62F1B435AAF774C17C73D2AAEF';
wwv_flow_imp.g_varchar2_table(132) := 'F9C9C9B1EA0D909E11C80A90006411F8BF7A0229CB2FC18E8EB6AA9DD0355365D1C21E696D317FF3E03DF7ED9DB91AAF0312B0D9B6B7B7CA8205DD12853FCD4D73A4D5721BE9D424E78C043157B451BA000940E976AC1980809E10656AA62B9B0098CAC3';
wwv_flow_imp.g_varchar2_table(133) := '2CF3C493756B9719BB3C7CE4A4BCF1D67BC63A14162FF0DA9BEFCA5B474F19575CB7664576863C639D300BBB3ADB8DDDD9DEFBC69529442000011280001069A27401DB2FC1C6C6F06EFBEB278AE5CB16886D4CF7DEFFA29FA6A8538480CDB4714EA32C5D';
wwv_flow_imp.g_varchar2_table(134) := '32B788162B5FB5B1B1C1D849269D329653E847803AE508900094A3C7BA650BD87E09DA7E89963D80221BA8ADA991B5ABCD7B019EDEFB6AF658B5F9CA8622BB75BAFAB9F343F2CCBE43468375EB9687F60551C6814C2B6C6A9C33EDD5ECA7E90C09C06C15';
wwv_flow_imp.g_varchar2_table(135) := '968429400210A6367DCD1248A7CD5FFED3943D963A6BA52A2F58B962A1D4D6D6161C452A9596FB1EDC5FB09C82E204EE7BF015E3D515FA1D11AB9657E72E91A6481A2D09802DF935B54DD96501FE2E4F8004A03C3FD62E53206DD90D3AC7B21BB5CCEE4B';
wwv_flow_imp.g_varchar2_table(136) := '5A5D2F335BBD6A9971DD071E795EC6C7CDC98DB1010A7302A36393A296B91705FE5ABD7299D4D5154EC80AAC56F1C54D96F7AEEDBD5FF101D281F3022400CEBF05AA0B60FB14D4D8509D5BBADA54D6AD5E223535854F381B1E1E95C79E307F639DAD0FCA';
wwv_flow_imp.g_varchar2_table(137) := '451EDDFDBA8C8D153E5B5EE760ED9A2591A46AB42400B6F77E24838AD4A0184CB9022400E50AB27E5902B64F412DCDD13A09702A58FDE5BE7489F9BE007A63A04C2633B50A3F8B1450BB9FDCF7AC71ADE5CB1747E632D19903D59B47CD5C36FD759A7300';
wwv_flow_imp.g_varchar2_table(138) := 'A673F0BC0A0224005540A7CB9F0B6432E99FBFC8F3CCF30A7FCACE533DD44557AD5B6EECEFD4E9F3F2E4B3478D75282C2CB0FBA9B7E4BD73970A57C896AC5BB534FB7734FFAFAFAB330E2CC35D238D3EB642CACB17200128DF90161C15686B6D92850BCC';
wwv_flow_imp.g_varchar2_table(139) := '979E7DFB7B8FCBC404677B17FB16999C4CC99DFFFD31E36A8B16CD97B6B666631D0A1140A0B0000940611B4A10B00AAC5BBBC258473FC1DEFFE8ABC63A14CE16B8F7810372F1D2C0EC82694BD6AF319F8839AD2A4F132740404108900004A1481BCE0ACC';
wwv_flow_imp.g_varchar2_table(140) := 'ED69979EEE2E63FC77FD788F0C0D173E91CDB8B2838503836372D73D7B8C9177777766DDCD77DA3336402102080809006F0204CA14586F391760686854FEC73DCF97D98B3BABDF75F773323A624E9836AC5FE90E0891CE12604130022400C138D28AC302';
wwv_flow_imp.g_varchar2_table(141) := '0B17744B57678751E0BE07F6CAB90B43C63A148ABCFBDEA0DCFFF073460ADDE3B2707EB7B10E85082060172001B01B510301A380279E6CDFBADE5827954AC9B7BFF794B10E85227FF7BD2744AD0A59785ED67A9BD9BAD0BA2C4F8A007104254002109424';
wwv_flow_imp.g_varchar2_table(142) := 'ED382DD0D5D9262B57986F48B3E7A9FD72F8C839A79D4CC1BF75F4BC3CFDACF984C9952B964A475B8BA919CA1040C0A70009804F28AA216013D8B47195E87DE94DF5BE7EA7F9D236D3BA492FFB9B6F3D620C516DAFDEB0C25887C2E40B106170022400C1';
wwv_flow_imp.g_varchar2_table(143) := '59D292E302731AEAE5EA0D6B8C0A6F1C7E47F6BDF8B6B18E8B85CF3C774CDE7CEBA431F44D57AF8BEC5DFF8C03A71081880A900044746218563C0556AF5C241D1D6DC6C17FEB3B8F19BFDDCEB872020BF5DB13EFFCEF8F1B236B6F6F9355CB1718EB50E8';
wwv_flow_imp.g_varchar2_table(144) := '8200310629400210A4266D392FE0799E6CDB7A95D1E1F4D9F3F2F0E3AF1BEBB854F8C0CE4372E6EC0563C83BB65D259EE719EB50880002C509900014E7456D04AC02BD5DEDB264B1F9D3EA77BEFF985CEA1B11D7FFF4650DBEFB03F3A7FF654B17494FD6';
wwv_flow_imp.g_varchar2_table(145) := 'D4752BE217C12058011280603D690D819CC0964D6BA4B6B636F73CDF5F7A73A0BFF81BF3496FF9D64BDAB23FFBDAC33232325630ACBABA3AD972F5EA82E514208040E9022400A5DBB1260205059A9BE6C855EB57152CD782175F7E531EDBF3A63E75F2F1';
wwv_flow_imp.g_varchar2_table(146) := 'C8AED7E5A5570E1B63DF9035D4AF5E3656A2D01101C20C5A8004206851DA43E07D81756B96484B8BF9DBEABE7EE74372FEC2F0FB6BB8F3E3FCC561F9AFDF31EF01696E6E9235AB17BB8342A408842C4002103238DDB923505B53235B379BEF5AA7BBBFFF';
wwv_flow_imp.g_varchar2_table(147) := 'FC6B0FB983928D3493C9C89FFEF503C65DFFD96AB2ED9AABA4B6865F516AC1430483E005F8D715BC292D22F081807E4FC082F9733F789DEFC9FE8347E4E1C75FCB5794C8650F3DF69A1C7CF59831B6F95933EEF76F24A21081B2054800CA26A40104CC02';
wwv_flow_imp.g_varchar2_table(148) := '5BAF592735964FB2DFBCF391ECA180E47F59D0BBE706E55BDF79D4085653532BDBB7AE33D6A1D03501E2AD840009402554691381690267CF5E10DDED3D6DD1ACA763E3E3A287026CF566AD18A3051ADB97BF7ABF68ACA6616732693973F6A2A90A650820';
wwv_flow_imp.g_varchar2_table(149) := '108000094000883481403E818C64E4C5570ECB8B2F1FB22600BAFEFE8347E581470FE9D3443EFEE74307E58D37DFB1C696C964DD5E7A3567A786D615A890780102AC8C000940655C69D57181C9544A9E7AE680BC75E4785112DFFA6F8F8AEE262F6AA518';
wwv_flow_imp.g_varchar2_table(150) := '543E7D7640BEFDBDE2BE0849EDD4502D63102243442076022400B19B32061C7581D1B109D9B5E745397DE6DDA2873A3131217FFA570FF8DA635074E3555A413FD17FF9AB3F138DADD821A8A15AAA69B1EB523F2902C451290112804AC9D2AE9302038323';
wwv_flow_imp.g_varchar2_table(151) := 'F2E8AEBD72F1525FC9F1BFF6C6DBF2D307F697BC7ED456FCE9FDFBB37B42CCDFF4671AB35AAAA9DA9AEA51860002C509900014E7456D040A0ABCFBDEA5DCC67F6478B4601DBF05DFF9DEE3F2C65BEFF9AD1ED97A6F1E3927DFF9FEE3658F4F4D35093877';
wwv_flow_imp.g_varchar2_table(152) := 'BEF4C4AAEC41D0405504E8B47202240095B3A56587048EBD7D46763FF9BC4C4E4CFA8A5A2F7533554CA526E50B5FBA5B2E5C8CEF5D02CF9D1F923FFA931F8AC6628AD56631B5AEDAEE7AE27939F6F6D9A945FC44008132044800CAC0635504F4F8F6FE83';
wwv_flow_imp.g_varchar2_table(153) := '47E4B9170EFAC66898D3221DDDCBA4B6AEC1B84E7FFFA0FCD1977E226363FE920A63632117EA98FFFF3FB95BFA07CC094C5DDD9C9C859A888F3FEAFDDC0B07E4C0AB4713759E848FD01DAD42D895142001A8A42E6D275A20954ECB33FB0ECAEB6F1EF51D';
wwv_flow_imp.g_varchar2_table(154) := '676373A7B4752C14FDD4AB3F3DCB0D828E1E3B2D5FF9EB8763B5B1D38DF497BEFAA0BC73C27C12A4C6DEDAB1E0030BB5F10BF9DA1B4772F63A077ED7A11E02085C29400270A507AF10F02530363E21BB9E78514E9EF2B73BDAF33C69699B272DADBD1FB4';
wwv_flow_imp.g_varchar2_table(155) := '5F5B5B9F7D6DBE4DB064FFEC7DEE90DC75CFF3D967F1F8FFFB3F7E3EBB47E475EB605BB31E6A3055516DD4C8F3BCA945C69F6AAF73A07361AC48616C051878650548002AEB4BEB0914D0B3D177EE7A4E2E5CB8E42B3AFDA4AB9FF61B9BDA67D59FD3D826';
wwv_flow_imp.g_varchar2_table(156) := '0D735A672D9FB9E0FB3FDC2DCF3E5FDC3D0566B611C6EBBD2F1C97BB7EBCDBDAD59CAC45BEB8D548ADD4CCDA48B682CE81CEC5E050F9275E669BE37F049C122001706ABA09B65C013D0BFDD15D7B6568C87C6C7BAA9F9ADA3A69EF5C2CF50DCD538B66FD';
wwv_flow_imp.g_varchar2_table(157) := '6C6D9F275A6F56C18C055FF9EA4FE5F889E8DE22F7E8F10BF2E5BFFCE98C51CF7EA9E73EE8A7FDD9259797A8959AF931D135742E7666E7E4FCC57E7DC92331020452690112804A0BD37E6204DE39F99EEC7EF205DF67FAE74E70EB5A2AFAD384E07935D2';
wwv_flow_imp.g_varchar2_table(158) := 'D6BE403CCFBCEB7B3C7BD8E10FFFE4C7D2D737626AAE2A653AA63FFC931F898ED13400EF8358CDBF7AD4ACC387DD545FDAEFAE3D2F88CED1D4327E22808059C0FCAFD0BC2EA5083821A027B51D7CED983CBBEF1549A7D3BE62D6B3DADBBB168B9EECE767';
wwv_flow_imp.g_varchar2_table(159) := '85BAFA46696AE9B6563D7FBE4FBEF0957B65723265AD1B5685898994FCD1977E2A172F0D58BB6C6EEDB15EFD30D588DAA9A15A4E2D33FD4CA753B9393AF8FAB1589D34698AC9E53262AFBC000940E58DE921C6027A96F9B3CF1D9243AFBDE53B0A3D9B3D';
wwv_flow_imp.g_varchar2_table(160) := '771CDB2BEE9F57537397AFF301DE3C7C42FEEA9BE5DF5CC77740968A7FF65F1E96C347EC77FAD3F31D1A9B3A2CAD5D599CDB63D0B150D4F4CA92C2AF0E1D7A4B74CE74EE0AD7A20401048AFB0D8517020E09E8D9E5BB9F7C494E9C3CED3BEA96B6B9623A';
wwv_flow_imp.g_varchar2_table(161) := 'BE6D6B48CF07D063E4B67A8FEF7E59BE7EE713B66A152FFFDB3BF7C853CFBE6AED47F770E819FED68A052AA8A9DA16289EB558E74CE76EDCE78D996635C0822A0BD07D180224006128D347EC04F4ACF29DBB9E93F3E7FD9D74A767ADB7772E92C6223FE1';
wwv_flow_imp.g_varchar2_table(162) := 'CE84D14FBCED1D8B44777FCF2C9BF9FA670FED95DFFB831FC8F92ADC2D50EFF2A77DDFFFD0BE99C39AF5BAA6A6CED7390EB3569CB1406DD5D8B3DC3B616A359DBB9DBBF6C9D00857084C99F01381E90235D35FF01C010424BB41ED979DBBF6067AA67F31';
wwv_flow_imp.g_varchar2_table(163) := 'AE7AF6BBDE20C7F3CC27056A9B6FBE75523EFF2FBF21FFFE8BF7C8DDF7BD2C878F9E93743AA345813EB4CDC347CEC98FEF7D49FEE08B77CBE7FFD53744FBB675A2094D9BDEECA7B6CE56D557F907570864930A3F2B0C0E0ECBCEC7F6F93A3FC14F7BD409';
wwv_flow_imp.g_varchar2_table(164) := '47805EC211200108C7995E622270F2F439D1B3C9F5AC723F432EF66C753F6D6A9DFAFA26699E76D3205D56E831393929AF1C3822DFFEDEA3F2BBBFFF6DF9F43FFD53F9FB9FF94ADE47A136A696175A4FDBFCDD7FF76DF9CEF777CAFE03472595F27712A2';
wwv_flow_imp.g_varchar2_table(165) := '9EF4A7BBFFA7DA0FE2E765F325A23FFDB437363E2E8FEF795E746EFDD4A70E02AE089000B832D3C4691538F4FA7179FAD997B39FA0FD6DDC729F468B3879E7242400000E4D49444154D3DF3A8019157497B7DE3067C6E2D8BCD4B16B0C9518B0EE25D12B';
wwv_flow_imp.g_varchar2_table(166) := '04740EFCB4AF098BCEAD7ED5B29FFAD4A9A6007D87254002109634FD4456209DC9C8BE175E9383870EFB1EA39E959E3B1EED55F69F506BDB3CA96F68F23DAEA854D431EBD82B391E3DBCA073504C9271E0D5377373AD735EC9B1D136027110A8EC6FAF38';
wwv_flow_imp.g_varchar2_table(167) := '083046A705F42CF13D4FBD2CC7DFB65FC6A6509EE7899ECDAE67A5EBEB301E6D1D8BB24940E13B0986318662FAD04FE53AE662D629A7AE5E1DA00FCFB39F33A1FDE85CEB9C4F7085807244EEC180C213200108CF9A9E2226A06787EFDCB54FDE7BEFBCAF';
wwv_flow_imp.g_varchar2_table(168) := '91E9D9E76D1D0BA5B1A9DD57FDA02A799E27DA6FBE7BE707D54750EDE818F553B9E7F9DB1807D56F635347CE48E7C84F9B3AE78FED795E8647C6FC54A70E028914200148E4B412944D40EF5AA76787EB59E2B6BA5A9E3BE66CB9A7BFD6ABD4C3F3340958';
wwv_flow_imp.g_varchar2_table(169) := '90DDFB3057FC6EE42A35967CEDEA98F453785BC7827CC5A12CD33D0FEDD939AAA9A9F3D55F7FFFA0EC7C9C2B047C618556898EC214200108539BBE222170FACC79796CF73ED1B3C3FD0C48CF36EFE8F47FD6B99F364BADA39F743BBB9689DE55AFD43682';
wwv_flow_imp.g_varchar2_table(170) := '5E4FC7D2D9BD3CBB67A4B8BBFC053D0E6D2F37575D4B7CDF6E78746C2CF75ED0F784AECF0301970448005C9A6D6295D7DF7C479E7CE625D1EBDAFD70E87DE8F56C73DD03E0A77E1875742CADEDF3A57BEEAAEC6EEF05B96440377CB5B5F515DD3BE0D5D4';
wwv_flow_imp.g_varchar2_table(171) := '486DB60FBDAC4F37FAFA69BF3B3B061D8B9F1B178561A37DA84F473609D03D02FADAF6D0F782BE27DE78EB84AD2AE51516A0F970054800C2F5A6B72A09A4D36979EEA5D765FFC1377C8F40CFF46FEB58285E85CFF4F73DA01915755C7ACC5D37C01DDD4B';
wwv_flow_imp.g_varchar2_table(172) := 'A5B367B974F7AE929E796B0A3E663431EBA5695D6D5BFBD08DABF6A97DEB1866351281053AAEF622EFCCF8CAFED773EF11FDF2A70884C01010A8B8000940C589E9A0DA027AB6F79EA75F9163C7FC7DC2F33C2F7BAC7D9E8479A67FB58D92DABF9E97A00F';
wwv_flow_imp.g_varchar2_table(173) := 'CFF37C85A8EF9127B2EF95499F373AF2D528957C0A502D6C011280B0C5E92F54013DCB5BCFF6D6B3BEFD74ACBBB9F5537F63C867FAFB191B754A13686CEA90D6F605A273EBA785B3EF9E93C7763F2FA3A3E37EAA530781D80A9000C476EA18B84DE052DF';
wwv_flow_imp.g_varchar2_table(174) := 'E5B3BCF56C6F5B5D2DD763C7ED9D8BC5EFB1635D87473C0472E77264E7B6C6E715027D7D03F2C8E3FB44DF43F18830FEA32482F0054800C237A7C71004DE3EF99EECDCB557F42C6F3FDDE949741D1139D3DFCF78A953BC406E8EBB9688FEF4B3F6E8E8A8';
wwv_flow_imp.g_varchar2_table(175) := '3CB6E7397927FB5EF2539F3A08C44D8004206E33C6788D0293A9B43CFFD2EBB277DF2BBECFF4D74FFC513BD3DF182485250BE4F6F274F9DFCB939A4CC9B3D9F7D20B2FBF29FADE2AB96356B408505C0D0112806AA8D367E002A9745A8E1C3F2D0F3EF2B4';
wwv_flow_imp.g_varchar2_table(176) := '1CF579B29F0E42CFF46FEF5C249EC73F05F570E1A173AD73AEE706F88DF7C8D1B7E5E19DCFCA9163A744DF6B7ED7A31E025116E0B75E946787B1E515181B9F9081816179EF5C9FBC79F4943CF7E26BF2C0C34FCB0B2FBE2A2323A379D7C9B750CF0EE74C';
wwv_flow_imp.g_varchar2_table(177) := 'FF7C326E2CD3F9F7FB95CB2A3234342C2FBC7428FB5E7B4A9E7FF975399C7DEFE97B70607058F43DA975789426C05AD5112001A88E3BBDFA14F8E13D8FCACCC7BD3FDB2D0F3EFAB4EC7AE23979F9E54372ECF8C9A236FC5E4D8D14FB09D0E770A9163381';
wwv_flow_imp.g_varchar2_table(178) := 'A6E64ED1AB3E74AF80DFA18F8C8CC9D1A327E4A5EC7B4FDF83BAD749DF9333DFA7FADA6F9BD443A01A022400D550A7CFAA09E48E0177FA3F065CB581D2716802C55E2110DAC09CE98840AB254002502D79FA0D5DA0BEA14938D33F74F6587458573F473A';
wwv_flow_imp.g_varchar2_table(179) := 'BA9688BE47843F0838224002E0C844BB1CA6E779D2DCDA93DDEDBF58740F80CB16C45E5840DF1BEDD9BD43CD2D3DE2795EE18A94042A4063D5132001A89E3D3D67052AFD2532FAE535EDD94F764DCD5DD9DEF8DFE46D2A7349AEA9A52B972CEA7BA79271';
wwv_flow_imp.g_varchar2_table(180) := 'E35D495DDAF6234002E047893A1513A8AD6BA848DB7AB317FDC21AFDF21A7D5E914E62D8A8C9DB5416C350CB1AB27EE3A1BE775ADAE6F9FE6AE1623BC45BC57854538004A09AFAF42D8D4D9D8129E8D9FD739ADA739FDE3ABA97CA9CC6B6C0DA4E4A438D';
wwv_flow_imp.g_varchar2_table(181) := '4D85BDD94B327B961BB3EFA7CEEE65B9F7D49CEC737D8FCDAE55DA12BC4B7363ADE004480082B3A4A51204F40C6CBD0C4B3F71F9FDE5AAF5F478AD7E82D293B62EDFCC6771EEAB705BB39FD87459094371629599DEBA1B5ABD740EF48E884E209410A41A';
wwv_flow_imp.g_varchar2_table(182) := 'E97B4BBF1259CF13D0F79C2ED3F7A0BE17F53DE9A759BCAF54E25575054800AAEB4FEF5901DD2875648FD3EB2FD79E796BC4F6D07A5D3D2B64EA9399DECCA7BEA129DB12FFFB1198EEDDD5BB32F7E95697F959973A92BB5240DF739A08E87B50DF8BFA9E';
wwv_flow_imp.g_varchar2_table(183) := 'ECF1F1DEC59B775094046AA23418C68200020820E08A0071565B8004A0DA3340FF08208000020854418004A00AE87489000208B82E40FCD5172001A8FE1C300204104000010442172001089D9C0E11400001D705883F0A022400519805C6800002082080';
wwv_flow_imp.g_varchar2_table(184) := '40C80224002183D31D020820E0BA00F147438004201AF3C0281040000104100855800420546E3A430001045C1720FEA80890004465261807020820800002210A900084884D5708208080EB02C41F1D011280E8CC05234100010410402034011280D0A8E9';
wwv_flow_imp.g_varchar2_table(185) := '08010410705D80F8A324400210A5D9602C08208000020884244002101234DD20800002AE0B107FB4044800A2351F8C06010410400081500448004261A613041040C07501E28F9A000940D46684F1208000020820108200094008C87481000208B82E40FC';
wwv_flow_imp.g_varchar2_table(186) := 'D113200188DE9C30220410400001042A2E40025071623A400001045C1720FE280A9000447156181302082080000215162001A83030CD23800002AE0B107F34054800A2392F8C0A0104104000818A0A9000549497C611400001D705883FAA022400519D19';
wwv_flow_imp.g_varchar2_table(187) := 'C685000208208040050548002A884BD308208080EB02C41F5D011280E8CE0D23430001041040A06202240015A3A561041040C07501E28FB2000940946787B121800002082050210112800AC1D22C020820E0BA00F1475B800420DAF3C3E8104000010410';
wwv_flow_imp.g_varchar2_table(188) := 'A88800094045586914010410705D80F8A32E400210F519627C08208000020854408004A002A83489000208B82E40FCD117200188FE1C314204104000010402172001089C940611400001D705883F0E022400719825C688000208208040C00224000183D2';
wwv_flow_imp.g_varchar2_table(189) := '1C020820E0BA00F1C7438004201EF3C4281140000104100854800420504E1A430001045C1720FEB8089000C465A61827020820800002010A90000488495308208080EB02C41F1F011280F8CC15234500010410402030011280C0286908010410705D80F8';
wwv_flow_imp.g_varchar2_table(190) := 'E324400210A7D962AC08208000020804244002101024CD20800002AE0B107FBC044800E2355F8C16010410400081400448000261A411041040C07501E28F9B000940DC668CF1228000020820108000094000883481000208B82E40FCF113200188DF9C31';
wwv_flow_imp.g_varchar2_table(191) := '62041040000104CA162001289B900610400001D705883F8E022400719C35C68C000208208040990224006502B23A020820E0BA00F1C7538004209EF3C6A8114000010410284B8004A02C3E56460001045C1720FEB80A9000C475E6183702082080000265';
wwv_flow_imp.g_varchar2_table(192) := '0890009481C7AA08208080EB02C41F5F011280F8CE1D23470001041040A06401128092E95811010410705D80F8E32C400210E7D963EC0820800002089428400250221CAB21800002AE0B107FBC054800E23D7F8C1E010410400081920448004A62632504';
wwv_flow_imp.g_varchar2_table(193) := '1040C07501E28FBB000940DC6790F123800002082050820009400968AC82000208B82E40FCF117200188FF1C1201020820800002450B9000144DC60A08208080EB02C49F0401128024CC223120800002082050A4000940916054470001045C1720FE6408';
wwv_flow_imp.g_varchar2_table(194) := '900024631E8902010410400081A20448008AE2A232020820E0BA00F127458004202933491C082080000208142140025004165511400001D705883F39022400C9994B22410001041040C0B70009806F2A2A22800002AE0B107F9204480092349BC4820002';
wwv_flow_imp.g_varchar2_table(195) := '082080804F0112009F5054430001045C1720FE64099000246B3E89060104104000015F022400BE98A884000208B82E40FC4913200148DA8C120F0208208000023E0448007C205105010410705D80F89327400290BC392522041040000104AC0224005622';
wwv_flow_imp.g_varchar2_table(196) := '2A20800002AE0B107F120548009238ABC484000208208080458004C0024431020820E0BA00F1275380042099F34A54082080000208180548008C3C1422800002AE0B107F52054800923AB3C485000208208080418004C0804311020820E0BA00F1275780';
wwv_flow_imp.g_varchar2_table(197) := '0420B9734B640820800002081414200128484301020820E0BA00F12759800420C9B34B6C082080000208141020012800C362041040C07501E24FB6000940B2E797E8104000010410C82B40029097858508208080EB02C49F74011280A4CF30F121800002';
wwv_flow_imp.g_varchar2_table(198) := '082090478004200F0A8B10400001D705883FF9022400C99F632244000104104060960009C02C121620800002AE0B10BF0B0224002ECC3231228000020820304380046006082F11400001D70588DF0D01120037E69928114000010410B8428004E00A0E5E';
wwv_flow_imp.g_varchar2_table(199) := '20800002AE0B10BF2B022400AECC3471228000020820304D8004601A064F11400001D70588DF1D01120077E69A48114000010410F8408004E0030A9E20800002AE0B10BF4B0224002ECD36B1228000020820F0BE0009C0FB10FC400001045C17207EB704';
wwv_flow_imp.g_varchar2_table(200) := '4800DC9A6FA2450001041040202740029063E02F041040C07501E2774D8004C0B519275E041040000104B20224005904FE470001045C17207EF7044800DC9B7322460001041040404800781320800002CE0B00E0A20009808BB34ECC0820800002CE0B90';
wwv_flow_imp.g_varchar2_table(201) := '0038FF16000001045C17207E37054800DC9C77A24600010410705C8004C0F13700E1238080EB02C4EFAA000980AB334FDC08208000024E0B9000383DFD048F0002AE0B10BFBB022400EECE3D912380000208382C4002E0F0E4133A0208B82E40FC2E0B90';
wwv_flow_imp.g_varchar2_table(202) := '00B83CFBC48E00020820E0AC000980B3534FE00820E0BA00F1BB2DF0BF000000FFFF6DF570DB000000064944415403009FA2D94B3849F5DC0000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(10096214117694611934)
,p_file_name=>'icons/app-icon-512.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authorizations/administration_rights
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10096215705879611935)
,p_name=>'Administration Rights'
,p_static_id=>'administration-rights'
,p_scheme_type=>'NATIVE_FUNCTION_BODY'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'plsql_function_body', 'return true;')).to_clob
,p_error_message=>'Insufficient privileges, user is not an Administrator'
,p_version_scn=>'SH256:K94FzTYWdjDQ6WIg6w48Or20nhyD_tWnqCuRh9rK4CU'
,p_caching=>'BY_USER_BY_PAGE_VIEW'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authorizations/es_conductor
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10470092785493360891)
,p_name=>'Es conductor'
,p_static_id=>'es-conductor'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    '     SELECT 1',
    '     FROM Carros c',
    '     INNER JOIN Usuario u ON u.Documento_ID = c.Usuario_Documento_ID',
    '     WHERE UPPER(u.Correo) = UPPER(:APP_USER)')))).to_clob
,p_error_message=>unistr('Esta p\00E1gina es solo para conductores.')
,p_version_scn=>'SH256:yh89c0gk1ZLvbn08-OEJm8dhapRCjXV0WP0tZmpHp1w'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20261103034411Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034425Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
end;
/
prompt --application/shared_components/security/authorizations/es_pasajero
begin
wwv_flow_imp_shared.create_security_scheme(
 p_id=>wwv_flow_imp.id(10470537806069365370)
,p_name=>'Es pasajero'
,p_static_id=>'es-pasajero'
,p_scheme_type=>'NATIVE_EXISTS'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'sql_query', wwv_flow_string.join(wwv_flow_t_varchar2(
    '  SELECT 1',
    '  FROM Usuario u',
    '  WHERE UPPER(u.Correo) = UPPER(:APP_USER)',
    '    AND u.Documento_ID NOT IN (SELECT Usuario_Documento_ID FROM Carros)')))).to_clob
,p_error_message=>unistr('Esta p\00E1gina es solo para pasajeros.')
,p_version_scn=>'SH256:EVRrIt1EVpRqladLDm7sTOExN6ryUzbCE2xnzMeVKdc'
,p_caching=>'BY_USER_BY_SESSION'
,p_created_on=>wwv_flow_imp.dz('20261103034455Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034455Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
end;
/
prompt --application/shared_components/navigation/navigation_bar
begin
null;
end;
/
prompt --application/shared_components/logic/application_settings
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/standard
begin
null;
end;
/
prompt --application/shared_components/navigation/tabs/parent
begin
null;
end;
/
prompt --application/shared_components/user_interface/lovs/boolean
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10096224362370611980)
,p_lov_name=>'BOOLEAN'
,p_static_id=>'boolean'
,p_lov_query=>'.'||wwv_flow_imp.id(10096224362370611980)||'.'
,p_location=>'STATIC'
,p_version_scn=>'SH256:CnCBOq-zabcz-aPWKwU8C5KDeZy6YuyjvpJoTrTywfI'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10096225076458611982)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'No'
,p_lov_return_value=>'FALSE'
,p_static_id=>'false'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(10096224601346611981)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Yes'
,p_lov_return_value=>'TRUE'
,p_static_id=>'true'
);
end;
/
prompt --application/shared_components/user_interface/lovs/carros_marca
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10472551475380045531)
,p_lov_name=>'CARROS.MARCA'
,p_static_id=>'carros-marca'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'CARROS'
,p_return_column_name=>'PLACA'
,p_display_column_name=>'MARCA'
,p_default_sort_column_name=>'MARCA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:cJ9C2M8TG5Qxe81cA_uIakzRvImLBoDMMfLBJwTpsFI'
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/localidades_nombre_localidad
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10472552197346045533)
,p_lov_name=>'LOCALIDADES.NOMBRE_LOCALIDAD'
,p_static_id=>'localidades-nombre-localidad'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'LOCALIDADES'
,p_return_column_name=>'ID_LOCALIDAD'
,p_display_column_name=>'NOMBRE_LOCALIDAD'
,p_default_sort_column_name=>'NOMBRE_LOCALIDAD'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:icd-IGkLyHuCvMTLA9NzlaLxyBCRRhYwKxZx4GK8Cio'
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/paradas_viaje_paradas_id_parada
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10484541164864338211)
,p_lov_name=>'PARADAS_VIAJE.PARADAS_ID_PARADA'
,p_static_id=>'paradas-viaje-paradas-id-parada'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PARADAS_VIAJE'
,p_return_column_name=>'PARADAS_ID_PARADA'
,p_default_sort_column_name=>'PARADAS_ID_PARADA'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:BxHtCX5vuTSl5rBWVea3OriTCEuS-9-sqiVI21OlIMI'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/paradas_viaje_viajes_id_viaje
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10484540471855338210)
,p_lov_name=>'PARADAS_VIAJE.VIAJES_ID_VIAJE'
,p_static_id=>'paradas-viaje-viajes-id-viaje'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'PARADAS_VIAJE'
,p_return_column_name=>'VIAJES_ID_VIAJE'
,p_default_sort_column_name=>'VIAJES_ID_VIAJE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:z6KIGXXrVWx7WiDUCiUVvgTpjfxXt_JfF3FGNMJ8fZM'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/lovs/usuario_nombre
begin
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(10470824085566992444)
,p_lov_name=>'USUARIO.NOMBRE'
,p_static_id=>'usuario-nombre'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'USUARIO'
,p_return_column_name=>'DOCUMENTO_ID'
,p_display_column_name=>'NOMBRE'
,p_default_sort_column_name=>'NOMBRE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>'SH256:P2jyPZtcLXOreHDa7ijjRSYPoIv7UcUpTBS9UbaftDw'
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_groups
begin
wwv_flow_imp_page.create_page_group(
 p_id=>wwv_flow_imp.id(10096216078112611936)
,p_group_name=>'Administration'
,p_static_id=>'administration'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(10096210831807611924)
,p_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044630Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10484702122130351505)
,p_short_name=>'Actualizar estado viaje'
,p_static_id=>'actualizar-estado-viaje'
,p_link=>'f?p=&APP_ID.:29:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>29
,p_created_on=>wwv_flow_imp.dz('20261103044630Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044630Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10472934346569445218)
,p_short_name=>'Buscar viajes'
,p_static_id=>'buscar-viajes'
,p_link=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>50
,p_created_on=>wwv_flow_imp.dz('20261103035814Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035814Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10484251366339714713)
,p_short_name=>'Cancelar solicitud'
,p_static_id=>'cancelar-solicitud'
,p_link=>'f?p=&APP_ID.:52:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>52
,p_created_on=>wwv_flow_imp.dz('20261103044309Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044309Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10482658544181304735)
,p_short_name=>'Gestion pasajeo'
,p_static_id=>'gestion-pasajeo'
,p_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>41
,p_created_on=>wwv_flow_imp.dz('20261103043842Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043842Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10484483655357730727)
,p_short_name=>'Gestionar solicitudes'
,p_static_id=>'gestionar-solicitudes'
,p_link=>'f?p=&APP_ID.:27:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>27
,p_created_on=>wwv_flow_imp.dz('20261103044549Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044549Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10484603740273342557)
,p_short_name=>'Historial de viajes'
,p_static_id=>'historial-de-viajes'
,p_link=>'f?p=&APP_ID.:25:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>25
,p_created_on=>wwv_flow_imp.dz('20261103044501Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044501Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10483226450915318554)
,p_short_name=>'Historial viaje'
,p_static_id=>'historial-viaje'
,p_link=>'f?p=&APP_ID.:80:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>80
,p_created_on=>wwv_flow_imp.dz('20261103044100Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044100Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10096211078355611924)
,p_short_name=>'Home'
,p_static_id=>'home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10472545347297045387)
,p_short_name=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_link=>'f?p=&APP_ID.:21:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>21
,p_created_on=>wwv_flow_imp.dz('20261103035529Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035529Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10447312519920662839)
,p_short_name=>'Registrar conductor'
,p_static_id=>'registrar-conductor'
,p_link=>'f?p=&APP_ID.:10:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>10
,p_created_on=>wwv_flow_imp.dz('20261103014750Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014750Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10470820605457992302)
,p_short_name=>'Registrar vehiculo'
,p_static_id=>'registrar-vehiculo'
,p_link=>'f?p=&APP_ID.:20:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>20
,p_created_on=>wwv_flow_imp.dz('20261103034638Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034638Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10454519650783429809)
,p_short_name=>'rfa1-dashboard-conductor'
,p_static_id=>'rfa1-dashboard-conductor'
,p_link=>'f?p=&APP_ID.:130:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>130
,p_created_on=>wwv_flow_imp.dz('20261103021253Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021253Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10459403220153529574)
,p_short_name=>'rfa2-dashboard-usuario'
,p_static_id=>'rfa2-dashboard-usuario'
,p_link=>'f?p=&APP_ID.:140:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>140
,p_created_on=>wwv_flow_imp.dz('20261103022931Z')
,p_updated_on=>wwv_flow_imp.dz('20261103022931Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10425873229912785653)
,p_short_name=>unistr('RFC1 \2013 Demanda por localidad')
,p_static_id=>'rfc1-demanda-por-localidad'
,p_link=>'f?p=&APP_ID.:100:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>100
,p_created_on=>wwv_flow_imp.dz('20261102232138Z')
,p_updated_on=>wwv_flow_imp.dz('20261102232138Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10447647054108694290)
,p_short_name=>'rfc2-ingresos-por-localidad'
,p_static_id=>'rfc2-ingresos-por-localidad'
,p_link=>'f?p=&APP_ID.:110:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>110
,p_created_on=>wwv_flow_imp.dz('20261103015305Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015305Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10453152786662359369)
,p_short_name=>'rfc3-viajes-por-conductor'
,p_static_id=>'rfc3-viajes-por-conductor'
,p_link=>'f?p=&APP_ID.:120:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>120
,p_created_on=>wwv_flow_imp.dz('20261103020109Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020109Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10484536715556338050)
,p_short_name=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_link=>'f?p=&APP_ID.:51:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>51
,p_created_on=>wwv_flow_imp.dz('20261103044415Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044415Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/navigation/breadcrumbentry
begin
null;
end;
/
prompt --application/shared_components/user_interface/themes
begin
wwv_flow_imp_shared.create_theme(
 p_id=>wwv_flow_imp.id(10096211712611611925)
,p_theme_id=>42
,p_static_id=>'universal-theme'
,p_theme_name=>'Universal Theme'
,p_theme_internal_name=>'UNIVERSAL_THEME'
,p_version_identifier=>'26.2'
,p_navigation_type=>'L'
,p_nav_bar_type=>'LIST'
,p_is_locked=>false
,p_current_theme_style_id=>4194319937007846
,p_default_page_template=>4075783602716660119
,p_default_dialog_template=>2103835248774687739
,p_error_template=>2104585595298951431
,p_printer_friendly_template=>4075783602716660119
,p_login_template=>2104585595298951431
,p_default_button_template=>4075790603270660137
,p_default_region_template=>4075786578761660127
,p_default_chart_template=>4075786578761660127
,p_default_form_template=>4075786578761660127
,p_default_reportr_template=>4075786578761660127
,p_default_wizard_template=>4075786578761660127
,p_default_menur_template=>2534890969069732905
,p_default_listr_template=>4075786578761660127
,p_default_irr_template=>2103954283454391425
,p_default_report_template=>2542081983073888486
,p_default_label_template=>1612549609962752680
,p_default_menu_template=>4075790987805660140
,p_default_list_template=>4075788786379660133
,p_default_top_nav_list_temp=>2530182346535839887
,p_default_side_nav_list_temp=>2471166859590295591
,p_default_nav_list_position=>'SIDE'
,p_default_dialogbtnr_template=>2129856781885180476
,p_default_dialogr_template=>4504868307683981366
,p_default_option_label=>1612549609962752680
,p_default_required_label=>1612549789555753698
,p_default_navbar_list_template=>2850970698196720012
,p_file_prefix=>nvl(wwv_flow_application_install.get_static_theme_file_prefix(42),'#APEX_FILES#themes/theme_42/26.2/')
,p_files_version=>64
,p_icon_library=>'FONTAPEX'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#APEX_FILES#libraries/apex/#MIN_DIRECTORY#widget.stickyWidget#MIN#.js?v=#APEX_VERSION#',
'#THEME_FILES#js/theme42#MIN#.js?v=#APEX_VERSION#'))
,p_css_file_urls=>'#THEME_FILES#css/Core#MIN#.css?v=#APEX_VERSION#'
,p_reference_id=>wwv_imp_util.get_subscription_id(4075791579648660165,2000,'universal-theme',8842.262)
,p_version_scn=>'SH256:_ZA2OCAT0oe8zXeYXS4pqku9eJXOHXBko77-CJUyv6E'
,p_version_scn_master=>'SH256:S3Fh7S4ZMPpy-ID1j0RgxJIrTUyM6ZXOJB4KD7haOtc'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/user_interface/theme_style
begin
null;
end;
/
prompt --application/shared_components/user_interface/theme_files
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_opt_groups
begin
null;
end;
/
prompt --application/shared_components/user_interface/template_options
begin
null;
end;
/
prompt --application/shared_components/globalization/language
begin
null;
end;
/
prompt --application/shared_components/globalization/translations
begin
null;
end;
/
prompt --application/shared_components/logic/build_options
begin
wwv_flow_imp_shared.create_build_option(
 p_id=>wwv_flow_imp.id(10096210133632611923)
,p_build_option_name=>'Commented Out'
,p_static_id=>'commented-out'
,p_build_option_status=>'EXCLUDE'
,p_version_scn=>'SH256:1lQI3DW9n-0ZEGoDXUirkaB0JWCIATVWpJZCTCkODmI'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/globalization/messages
begin
null;
end;
/
prompt --application/shared_components/globalization/dyntranslations
begin
null;
end;
/
prompt --application/shared_components/security/authentications/login_wheels_alpes
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10449359879671227735)
,p_name=>'Login Wheels Alpes'
,p_static_id=>'login-wheels-alpes'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'authentication_function', 'fn_autenticar',
  'enable_legacy_attributes', 'N')).to_clob
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:NEuXjYldYGply4xjgn4bAFB5jA4Yf6HBEqSPi-HDg50'
,p_created_on=>wwv_flow_imp.dz('20261103013912Z')
,p_updated_on=>wwv_flow_imp.dz('20261103013930Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/shared_components/security/authentications/oracle_apex_accounts
begin
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(10096210470929611923)
,p_name=>'Oracle APEX Accounts'
,p_static_id=>'oracle-apex-accounts'
,p_scheme_type=>'NATIVE_APEX_ACCOUNTS'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
,p_version_scn=>'SH256:MwlwV9vQNyvTGV3nRFfTrp5n7mJ1Ugme2lUrlsOYuxw'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/user_interfaces/combined_files
begin
null;
end;
/
prompt --application/pages/page_00000
begin
wwv_flow_imp_page.create_page(
 p_id=>0
,p_name=>'Global Page'
,p_reload_on_submit=>null
,p_warn_on_unsaved_changes=>null
,p_autocomplete_on_off=>'OFF'
,p_protection_level=>'D'
,p_page_component_map=>'14'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00001
begin
wwv_flow_imp_page.create_page(
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Wheels Alpes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10096223749069611979)
,p_plug_name=>'Wheels Alpes'
,p_static_id=>'wheels-alpes'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>2677445476673898083
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00010
begin
wwv_flow_imp_page.create_page(
 p_id=>10
,p_name=>'Registrar conductor'
,p_alias=>'REGISTRAR-CONDUCTOR'
,p_step_title=>'Registrar conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261103014750Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103015918Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10447311985807662795)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103014750Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014750Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10447312946871662984)
,p_plug_name=>'Registrar conductor'
,p_static_id=>'registrar-conductor'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'USUARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10447318137801662990)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10447319496113662992)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015354Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10447319835643662992)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10447314086424662986)
,p_name=>'P10_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_item_source_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10451806093796306501)
,p_name=>'P10_CLAVE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Clave'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103015354Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015354Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10447315248704662988)
,p_name=>'P10_CORREO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_item_source_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Correo'
,p_source=>'CORREO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10447313227640662985)
,p_name=>'P10_DOCUMENTO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_item_source_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Documento'
,p_source=>'DOCUMENTO_ID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015354Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10447313667527662986)
,p_name=>'P10_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_item_source_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10447315692450662988)
,p_name=>'P10_NUMERO_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_item_source_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Numero Celular'
,p_source=>'NUMERO_CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10447314826525662987)
,p_name=>'P10_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_item_source_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10447314430358662987)
,p_name=>'P10_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_item_source_plug_id=>wwv_flow_imp.id(10447312946871662984)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10451806223039306503)
,p_validation_name=>'Validar datos'
,p_static_id=>'validar-datos'
,p_validation_sequence=>10
,p_validation=>':P10_DOCUMENTO_ID > 0 AND REGEXP_LIKE(:P10_NUMERO_CELULAR, ''^3[0-9]{9}$'') AND REGEXP_LIKE(LOWER(:P10_CORREO), ''^[^@]+@[^@]+\.edu\.co$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Revisa los datos: el documento debe ser mayor que 0, el correo debe terminar en .edu.co y el celular debe tener 10 digitos y empezar por 3.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261103015918Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015918Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10451806146967306502)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crear credenciales'
,p_static_id=>'crear-credenciales'
,p_process_sql_clob=>'INSERT INTO Credenciales (Usuario_documento_ID, Username, Contrasena, Rol) VALUES (:P10_DOCUMENTO_ID, :P10_CORREO, RAWTOHEX(STANDARD_HASH(:P10_CLAVE, ''SHA256'')), ''Conductor'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10447319496113662992)
,p_internal_uid=>10451806146967306502
,p_created_on=>wwv_flow_imp.dz('20261103015505Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015505Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10447320288078662993)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10447312946871662984)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registrar conductor'
,p_static_id=>'initialize-form-registrar-conductor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10447320288078662993
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10447320664340662994)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10447312946871662984)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Registrar conductor'
,p_static_id=>'process-form-registrar-conductor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10447320664340662994
,p_created_on=>wwv_flow_imp.dz('20261103014752Z')
,p_updated_on=>wwv_flow_imp.dz('20261103014752Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00020
begin
wwv_flow_imp_page.create_page(
 p_id=>20
,p_name=>'Registrar vehiculo'
,p_alias=>'REGISTRAR-VEHICULO'
,p_step_title=>'Registrar vehiculo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261103034638Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103034827Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10470819991214992271)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103034638Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034638Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10470821287663992439)
,p_plug_name=>'Registrar vehiculo'
,p_static_id=>'registrar-vehiculo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'CARROS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10470826713139992447)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10470828010851992449)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034827Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10470828434898992449)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10470822786352992442)
,p_name=>'P20_ANO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_item_source_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_prompt=>'Ano'
,p_source=>'ANO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10470823103917992443)
,p_name=>'P20_COLOR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_item_source_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_prompt=>'Color'
,p_source=>'COLOR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10470823525250992443)
,p_name=>'P20_CUPOS'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_item_source_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_prompt=>'Cupos'
,p_source=>'CUPOS'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10470821931865992441)
,p_name=>'P20_MARCA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_item_source_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_prompt=>'Marca'
,p_source=>'MARCA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10470822307038992441)
,p_name=>'P20_MODELO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_item_source_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_prompt=>'Modelo'
,p_source=>'MODELO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10470821526912992440)
,p_name=>'P20_PLACA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_item_source_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_prompt=>'Placa'
,p_source=>'PLACA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034827Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10470823962702992444)
,p_name=>'P20_USUARIO_DOCUMENTO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_item_source_plug_id=>wwv_flow_imp.id(10470821287663992439)
,p_prompt=>'Usuario Documento Id'
,p_source=>'USUARIO_DOCUMENTO_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USUARIO.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10470828864358992450)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10470821287663992439)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registrar vehiculo'
,p_static_id=>'initialize-form-registrar-vehiculo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10470828864358992450
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10470829330466992451)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10470821287663992439)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Registrar vehiculo'
,p_static_id=>'process-form-registrar-vehiculo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10470829330466992451
,p_created_on=>wwv_flow_imp.dz('20261103034639Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034639Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00021
begin
wwv_flow_imp_page.create_page(
 p_id=>21
,p_name=>'Publicar viaje'
,p_alias=>'PUBLICAR-VIAJE'
,p_step_title=>'Publicar viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261103035528Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103035713Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10472544706005045356)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103035529Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035529Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10472547436150045526)
,p_plug_name=>'Publicar viaje'
,p_static_id=>'publicar-viaje'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'VIAJES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10472555793781045536)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10472557065657045537)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Publicar'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035713Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10472557460614045537)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472551361152045531)
,p_name=>'P21_CARROS_PLACA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Carros Placa'
,p_source=>'CARROS_PLACA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'CARROS.MARCA'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472549772359045530)
,p_name=>'P21_COSTO'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Costo'
,p_source=>'COSTO'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472549335373045530)
,p_name=>'P21_CUPOS_DISPONIBLES'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Cupos Disponibles'
,p_source=>'CUPOS_DISPONIBLES'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472548917757045529)
,p_name=>'P21_DIRECCION_ORIGEN'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Direccion Origen'
,p_source=>'DIRECCION_ORIGEN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472550155263045530)
,p_name=>'P21_DISTANCIA_ESTIMADA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Distancia Estimada'
,p_source=>'DISTANCIA_ESTIMADA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472550506907045531)
,p_name=>'P21_DURACION_ESTIMADA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Duracion Estimada'
,p_source=>'DURACION_ESTIMADA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472548107340045527)
,p_name=>'P21_FECHA_HORA_SALIDA'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Fecha Hora Salida'
,p_source=>'FECHA_HORA_SALIDA'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472547710185045527)
,p_name=>'P21_ID_VIAJE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'ID del viaje'
,p_source=>'ID_VIAJE'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035713Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472552038426045533)
,p_name=>'P21_LOCALIDADES_ID_LOCALIDAD'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Localidades Id Localidad'
,p_source=>'LOCALIDADES_ID_LOCALIDAD'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOCALIDADES.NOMBRE_LOCALIDAD'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10472550980330045531)
,p_name=>'P21_RUTA_GENERAL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_item_source_plug_id=>wwv_flow_imp.id(10472547436150045526)
,p_prompt=>'Ruta General'
,p_source=>'RUTA_GENERAL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10472548514513045528)
,p_validation_name=>'P21_FECHA_HORA_SALIDA must be timestamp'
,p_static_id=>'p21-fecha-hora-salida-must-be-timestamp'
,p_validation_sequence=>10
,p_validation=>'P21_FECHA_HORA_SALIDA'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10472548107340045527)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10472557860251045537)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10472547436150045526)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Publicar viaje'
,p_static_id=>'initialize-form-publicar-viaje'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10472557860251045537
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10472558221226045538)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10472547436150045526)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Publicar viaje'
,p_static_id=>'process-form-publicar-viaje'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10472558221226045538
,p_created_on=>wwv_flow_imp.dz('20261103035530Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035530Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00025
begin
wwv_flow_imp_page.create_page(
 p_id=>25
,p_name=>'Historial de viajes'
,p_alias=>'HISTORIAL-DE-VIAJES'
,p_step_title=>'Historial de viajes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261103044500Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484603140482342520)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103044501Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044501Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484604958142342884)
,p_plug_name=>'Historial de viajes'
,p_static_id=>'historial-de-viajes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT V.ID_viaje, V.Fecha_hora_salida, V.Direccion_origen, V.Costo, V.Cupos_disponibles, V.Carros_placa FROM Viajes V JOIN Carros C ON C.Placa = V.Carros_placa JOIN Credenciales CR ON CR.Usuario_documento_ID = C.Usuario_documento_ID WHERE UPPER(CR.U'
||'sername) = UPPER(:APP_USER) ORDER BY V.Fecha_hora_salida DESC'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10484605059298342884)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>10484605059298342884
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10484608298839342902)
,p_db_column_name=>'CARROS_PLACA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Carros Placa'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10484607499798342899)
,p_db_column_name=>'COSTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10484607829383342900)
,p_db_column_name=>'CUPOS_DISPONIBLES'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Cupos Disponibles'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10484607083938342897)
,p_db_column_name=>'DIRECCION_ORIGEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Direccion Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10484606602437342895)
,p_db_column_name=>'FECHA_HORA_SALIDA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Hora Salida'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10484606201684342893)
,p_db_column_name=>'ID_VIAJE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Viaje'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044504Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044504Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00027
begin
wwv_flow_imp_page.create_page(
 p_id=>27
,p_name=>'Gestionar solicitudes'
,p_alias=>'GESTIONAR-SOLICITUDES'
,p_step_title=>'Gestionar solicitudes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261103044549Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484483016382730720)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103044549Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044549Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484483930641730842)
,p_plug_name=>'Gestionar solicitudes'
,p_static_id=>'gestionar-solicitudes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTADOS_DE_SOLICITUD'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484485765711730848)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484485272822730846)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484487715260730852)
,p_name=>'ESTADOS_SOLICITUD_ID_ESTADO_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADOS_SOLICITUD_ID_ESTADO_SOLICITUD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484488762323730854)
,p_name=>'FECHA_ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ESTADO'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484486713868730850)
,p_name=>'SOLICITUDES_ID_SOLICITUD'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SOLICITUDES_ID_SOLICITUD'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10484484013777730842)
,p_internal_uid=>10484484013777730842
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10484484749486730845)
,p_interactive_grid_id=>wwv_flow_imp.id(10484484013777730842)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10484484877057730845)
,p_report_id=>wwv_flow_imp.id(10484484749486730845)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484486220576730849)
,p_view_id=>wwv_flow_imp.id(10484484877057730845)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10484485765711730848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484487275238730852)
,p_view_id=>wwv_flow_imp.id(10484484877057730845)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10484486713868730850)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484488209296730854)
,p_view_id=>wwv_flow_imp.id(10484484877057730845)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10484487715260730852)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484489278987730856)
,p_view_id=>wwv_flow_imp.id(10484484877057730845)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10484488762323730854)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10484489772303730857)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10484483930641730842)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Gestionar solicitudes - Save Interactive Grid Data'
,p_static_id=>'gestionar-solicitudes-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10484489772303730857
,p_created_on=>wwv_flow_imp.dz('20261103044550Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044550Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00029
begin
wwv_flow_imp_page.create_page(
 p_id=>29
,p_name=>'Actualizar estado viaje'
,p_alias=>'ACTUALIZAR-ESTADO-VIAJE'
,p_step_title=>'Actualizar estado viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
,p_created_on=>wwv_flow_imp.dz('20261103044630Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484704410091351807)
,p_plug_name=>'Actualizar estado viaje'
,p_static_id=>'actualizar-estado-viaje'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'ESTADO_VIAJE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_created_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484706366031351814)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484705838497351812)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484710406890351823)
,p_name=>'DESCRIPCION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DESCRIPCION'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Descripcion'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>255
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484708425447351819)
,p_name=>'ESTADOS_VIAJE_ID_ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ESTADOS_VIAJE_ID_ESTADO'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484709465796351821)
,p_name=>'FECHA_ESTADO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FECHA_ESTADO'
,p_data_type=>'TIMESTAMP'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Fecha Estado'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(10484707396124351816)
,p_name=>'VIAJES_ID_VIAJE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VIAJES_ID_VIAJE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(10484704509616351808)
,p_internal_uid=>10484704509616351808
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(10484705367170351811)
,p_interactive_grid_id=>wwv_flow_imp.id(10484704509616351808)
,p_static_id=>'primary'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(10484705433377351811)
,p_report_id=>wwv_flow_imp.id(10484705367170351811)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484706873843351815)
,p_view_id=>wwv_flow_imp.id(10484705433377351811)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(10484706366031351814)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484707944504351818)
,p_view_id=>wwv_flow_imp.id(10484705433377351811)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(10484707396124351816)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484708925781351820)
,p_view_id=>wwv_flow_imp.id(10484705433377351811)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(10484708425447351819)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484709909182351823)
,p_view_id=>wwv_flow_imp.id(10484705433377351811)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(10484709465796351821)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(10484710902546351825)
,p_view_id=>wwv_flow_imp.id(10484705433377351811)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(10484710406890351823)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484701507747351469)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103044630Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044630Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10484711426583351826)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10484704410091351807)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Actualizar estado viaje - Save Interactive Grid Data'
,p_static_id=>'actualizar-estado-viaje-save-interactive-grid-data'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10484711426583351826
,p_created_on=>wwv_flow_imp.dz('20261103044633Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044633Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00040
begin
wwv_flow_imp_page.create_page(
 p_id=>40
,p_name=>'Crear cuenta pasajero'
,p_alias=>'CREAR-CUENTA-PASAJERO'
,p_step_title=>'Crear cuenta pasajero'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103034523Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(20917388695854023311)
,p_plug_name=>'Datos del pasajero'
,p_static_id=>'registrar-conductor'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'USUARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034523Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10470077433928360353)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10470077843749360355)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Registrar'
,p_button_position=>'CREATE'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10470085187113360368)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20917392339493023341)
,p_name=>'P40_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_item_source_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20921884346864666856)
,p_name=>'P40_CLAVE'
,p_is_required=>true
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Clave'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20917393501773023343)
,p_name=>'P40_CORREO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_item_source_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Correo'
,p_source=>'CORREO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20917391480709023340)
,p_name=>'P40_DOCUMENTO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_item_source_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Documento'
,p_source=>'DOCUMENTO_ID'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20917391920596023341)
,p_name=>'P40_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_item_source_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20917393945519023343)
,p_name=>'P40_NUMERO_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_item_source_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Numero Celular'
,p_source=>'NUMERO_CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20917393079594023342)
,p_name=>'P40_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_item_source_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(20917392683427023342)
,p_name=>'P40_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_item_source_plug_id=>wwv_flow_imp.id(20917388695854023311)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10470084281826360365)
,p_validation_name=>'Validar datos'
,p_static_id=>'validar-datos'
,p_validation_sequence=>10
,p_validation=>':P40_DOCUMENTO_ID > 0 AND REGEXP_LIKE(:P40_NUMERO_CELULAR, ''^3[0-9]{9}$'') AND REGEXP_LIKE(LOWER(:P40_CORREO), ''^[^@]+@[^@]+\.edu\.co$'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Revisa los datos: el documento debe ser mayor que 0, el correo debe terminar en .edu.co y el celular debe tener 10 digitos y empezar por 3.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10470084646290360366)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Crear credenciales'
,p_static_id=>'crear-credenciales'
,p_process_sql_clob=>'INSERT INTO Credenciales (Usuario_documento_ID, Username, Contrasena, Rol) VALUES (:P40_DOCUMENTO_ID, :P40_CORREO, RAWTOHEX(STANDARD_HASH(:P40_CLAVE, ''SHA256'')), ''Pasajero'');'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(10470077843749360355)
,p_internal_uid=>10470084646290360366
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034451Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10470082990956360361)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(20917388695854023311)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Registrar conductor'
,p_static_id=>'initialize-form-registrar-conductor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10470082990956360361
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10470083430183360362)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(20917388695854023311)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Registrar conductor'
,p_static_id=>'process-form-registrar-conductor'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10470083430183360362
,p_created_on=>wwv_flow_imp.dz('20261103034405Z')
,p_updated_on=>wwv_flow_imp.dz('20261103034405Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00041
begin
wwv_flow_imp_page.create_page(
 p_id=>41
,p_name=>'Gestion pasajeo'
,p_alias=>'GESTION-PASAJEO'
,p_step_title=>'Gestion pasajeo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261103043842Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_last_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10482657820073304701)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103043842Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043842Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10482662790922304900)
,p_plug_name=>'Gestion pasajeo'
,p_static_id=>'gestion-pasajeo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'USUARIO'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10482667900743304907)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10482669251946304909)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P41_DOCUMENTO_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10482668436946304908)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P41_DOCUMENTO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10482668895775304909)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P41_DOCUMENTO_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10482669671419304909)
,p_branch_action=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10482663826827304902)
,p_name=>'P41_APELLIDO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_item_source_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_prompt=>'Apellido'
,p_source=>'APELLIDO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10482665038446304904)
,p_name=>'P41_CORREO'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_item_source_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_prompt=>'Correo'
,p_source=>'CORREO'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10482663035442304901)
,p_name=>'P41_DOCUMENTO_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_item_source_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_source=>'DOCUMENTO_ID'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10482663401690304902)
,p_name=>'P41_NOMBRE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_item_source_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_prompt=>'Nombre'
,p_source=>'NOMBRE'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10482665424346304905)
,p_name=>'P41_NUMERO_CELULAR'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_item_source_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_prompt=>'Numero Celular'
,p_source=>'NUMERO_CELULAR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10482664629411304903)
,p_name=>'P41_PROGRAMA'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_item_source_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_prompt=>'Programa'
,p_source=>'PROGRAMA'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10482664209786304903)
,p_name=>'P41_UNIVERSIDAD'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_item_source_plug_id=>wwv_flow_imp.id(10482662790922304900)
,p_prompt=>'Universidad'
,p_source=>'UNIVERSIDAD'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10482670079172304911)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10482662790922304900)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Gestion pasajeo'
,p_static_id=>'initialize-form-gestion-pasajeo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10482670079172304911
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10482670421976304911)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10482662790922304900)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Gestion pasajeo'
,p_static_id=>'process-form-gestion-pasajeo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10482670421976304911
,p_created_on=>wwv_flow_imp.dz('20261103043844Z')
,p_updated_on=>wwv_flow_imp.dz('20261103043844Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
end;
/
prompt --application/pages/page_00050
begin
wwv_flow_imp_page.create_page(
 p_id=>50
,p_name=>'Buscar viajes'
,p_alias=>'BUSCAR-VIAJES'
,p_step_title=>'Buscar viajes'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261103035814Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103040711Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'USUARIO1@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10472933785424445209)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103035814Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035814Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10472935807683445347)
,p_plug_name=>'Buscar viajes'
,p_static_id=>'buscar-viajes'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>'SELECT V.ID_viaje, V.Fecha_hora_salida, V.Direccion_origen, L.Nombre_localidad AS Localidad, Z.Nombre_zona AS Zona_recogida, P.Direccion AS Punto_recogida, V.Costo, V.Cupos_disponibles FROM Viajes V JOIN Localidades L ON L.ID_localidad = V.Localidade'
||'s_ID_localidad JOIN Paradas_viaje PV ON PV.Viajes_ID_viaje = V.ID_viaje JOIN Paradas P ON P.ID_parada = PV.Paradas_ID_parada JOIN Zonas_parada Z ON Z.ID_zona_parada = P.Zonas_parada_ID_zona_parada WHERE V.Cupos_disponibles > 0 AND V.Fecha_hora_salida'
||' > SYSTIMESTAMP'
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103040711Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'USUARIO1@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10472935983945445347)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>10472935983945445347
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103040711Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'USUARIO1@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472939517628445362)
,p_db_column_name=>'COSTO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472939986700445363)
,p_db_column_name=>'CUPOS_DISPONIBLES'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Cupos Disponibles'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472937904730445356)
,p_db_column_name=>'DIRECCION_ORIGEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Direccion Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472937557564445354)
,p_db_column_name=>'FECHA_HORA_SALIDA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Hora Salida'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472937147048445351)
,p_db_column_name=>'ID_VIAJE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Viaje'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472938335399445357)
,p_db_column_name=>'LOCALIDAD'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Localidad'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472939198213445360)
,p_db_column_name=>'PUNTO_RECOGIDA'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Punto Recogida'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10472938716747445359)
,p_db_column_name=>'ZONA_RECOGIDA'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Zona Recogida'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103035815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103035815Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(10474264626356498937)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'primary'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ID_VIAJE:FECHA_HORA_SALIDA:DIRECCION_ORIGEN:LOCALIDAD:ZONA_RECOGIDA:PUNTO_RECOGIDA:COSTO:CUPOS_DISPONIBLES'
,p_created_on=>wwv_flow_imp.dz('20261103040711Z')
,p_updated_on=>wwv_flow_imp.dz('20261103040711Z')
,p_created_by=>'USUARIO1@UNIANDES.EDU.CO'
,p_updated_by=>'USUARIO1@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00051
begin
wwv_flow_imp_page.create_page(
 p_id=>51
,p_name=>'Solicitar cupo'
,p_alias=>'SOLICITAR-CUPO'
,p_step_title=>'Solicitar cupo'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'02'
,p_created_on=>wwv_flow_imp.dz('20261103044415Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484535184752338015)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103044415Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044415Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484538147996338205)
,p_plug_name=>'Solicitar cupo'
,p_static_id=>'solicitar-cupo'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'TABLE'
,p_query_table=>'SOLICITUDES'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10484543265031338213)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_button_name=>'CANCEL'
,p_static_id=>'cancel'
,p_show_as_disabled=>false
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10484544534447338215)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_button_name=>'CREATE'
,p_static_id=>'create'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P51_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10484543700486338214)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_button_name=>'DELETE'
,p_static_id=>'delete'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P51_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10484544197854338214)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_button_name=>'SAVE'
,p_static_id=>'save'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P51_ID_SOLICITUD'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_branch(
 p_id=>wwv_flow_imp.id(10484544948794338215)
,p_branch_action=>'f?p=&APP_ID.:50:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10484538866169338207)
,p_name=>'P51_FECHA_SOLICITUD'
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_item_source_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_prompt=>'Fecha Solicitud'
,p_source=>'FECHA_SOLICITUD'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_cMaxlength=>255
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10484538485809338205)
,p_name=>'P51_ID_SOLICITUD'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_item_source_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_source=>'ID_SOLICITUD'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10484541017851338211)
,p_name=>'P51_PARADAS_VIAJE_PARADAS_ID_PARADA'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_item_source_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_prompt=>'Paradas Viaje Paradas Id Parada'
,p_source=>'PARADAS_VIAJE_PARADAS_ID_PARADA'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARADAS_VIAJE.PARADAS_ID_PARADA'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10484540300137338210)
,p_name=>'P51_PARADAS_VIAJE_VIAJES_ID_VIAJE'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_item_source_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_prompt=>'Paradas Viaje Viajes Id Viaje'
,p_source=>'PARADAS_VIAJE_VIAJES_ID_VIAJE'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'PARADAS_VIAJE.VIAJES_ID_VIAJE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10484539934503338209)
,p_name=>'P51_USUARIO_DOCUMENTO_ID'
,p_source_data_type=>'NUMBER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_item_source_plug_id=>wwv_flow_imp.id(10484538147996338205)
,p_prompt=>'Usuario Documento Id'
,p_source=>'USUARIO_DOCUMENTO_ID'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'USUARIO.NOMBRE'
,p_lov_display_null=>'YES'
,p_label_alignment=>'RIGHT'
,p_field_template=>1612549789555753698
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_validation(
 p_id=>wwv_flow_imp.id(10484539496908338208)
,p_validation_name=>'P51_FECHA_SOLICITUD must be timestamp'
,p_static_id=>'p51-fecha-solicitud-must-be-timestamp'
,p_validation_sequence=>10
,p_validation=>'P51_FECHA_SOLICITUD'
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_imp.id(10484538866169338207)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10484545329145338215)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(10484538147996338205)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Solicitar cupo'
,p_static_id=>'initialize-form-solicitar-cupo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'current_row_total_item', '',
  'next_primary_key_items', '',
  'previous_primary_key_items', '')).to_clob
,p_internal_uid=>10484545329145338215
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10484545794527338216)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(10484538147996338205)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Solicitar cupo'
,p_static_id=>'process-form-solicitar-cupo'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'lock_row', 'Y',
  'prevent_lost_updates', 'Y',
  'return_primary_keys_after_insert', 'Y',
  'target_type', 'REGION_SOURCE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10484545794527338216
,p_created_on=>wwv_flow_imp.dz('20261103044417Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044417Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/pages/page_00052
begin
wwv_flow_imp_page.create_page(
 p_id=>52
,p_name=>'Cancelar solicitud'
,p_alias=>'CANCELAR-SOLICITUD'
,p_step_title=>'Cancelar solicitud'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'17'
,p_created_on=>wwv_flow_imp.dz('20261103044309Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103044632Z')
,p_created_by=>'SARA'
,p_last_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10484250749979714705)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103044309Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044309Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2243635703187449821)
,p_plug_name=>'Cancelar'
,p_static_id=>'cancelar'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103044544Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044544Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2243635950989449823)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(2243635703187449821)
,p_button_name=>'GUARDAR'
,p_static_id=>'guardar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Cancelar solicitud'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261103044632Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044632Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2243635844362449822)
,p_name=>'P52_SOLICITUD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2243635703187449821)
,p_prompt=>'Solicitud'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ''Solicitud ''||ID_solicitud||'' - Viaje ''||Paradas_viaje_Viajes_ID_viaje AS d,',
'       ID_solicitud AS r',
'FROM Solicitudes',
'WHERE Usuario_Documento_ID =',
'  (SELECT Documento_ID FROM Usuario WHERE UPPER(Correo) = UPPER(:APP_USER))'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103044544Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044544Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
end;
/
prompt --application/pages/page_00080
begin
wwv_flow_imp_page.create_page(
 p_id=>80
,p_name=>'Historial viaje'
,p_alias=>'HISTORIAL-VIAJE'
,p_step_title=>'Historial viaje'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
,p_created_on=>wwv_flow_imp.dz('20261103044100Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_last_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10483225877759318519)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103044100Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044100Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10483227421867318912)
,p_plug_name=>'Historial viaje'
,p_static_id=>'historial-viaje'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2103954283454391425
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT v.ID_viaje, v.Fecha_hora_salida, v.Direccion_origen, v.Costo,',
'  (SELECT en.Nombre_estado',
'     FROM Estado_viaje ev',
'     JOIN Estados_viaje en ON en.ID_estado = ev.Estados_viaje_ID_estado',
'    WHERE ev.Viajes_ID_viaje = v.ID_viaje',
'    ORDER BY ev.Fecha_estado DESC FETCH FIRST 1 ROW ONLY) AS estado,',
'  (SELECT COUNT(DISTINCT s.Usuario_Documento_ID)',
'     FROM Solicitudes s',
'     JOIN Estados_de_solicitud es ON es.Solicitudes_ID_solicitud = s.ID_solicitud',
'    WHERE s.Paradas_viaje_Viajes_ID_viaje = v.ID_viaje',
'      AND es.Estados_solicitud_ID_estado_solicitud = 2) AS pasajeros_confirmados',
'FROM Viajes v',
'JOIN Carros c ON c.Placa = v.Carros_placa',
'JOIN Usuario u ON u.Documento_ID = c.Usuario_documento_ID',
'WHERE UPPER(u.Correo) = UPPER(:APP_USER)',
'ORDER BY v.Fecha_hora_salida DESC'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
,p_ai_enabled=>false
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(10483227583171318912)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_internal_uid=>10483227583171318912
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10483229999516318923)
,p_db_column_name=>'COSTO'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Costo'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10483229541998318921)
,p_db_column_name=>'DIRECCION_ORIGEN'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Direccion Origen'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10483230396232318924)
,p_db_column_name=>'ESTADO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Estado'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10483229104002318920)
,p_db_column_name=>'FECHA_HORA_SALIDA'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Fecha Hora Salida'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10483228752942318917)
,p_db_column_name=>'ID_VIAJE'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Id Viaje'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(10483230712622318925)
,p_db_column_name=>'PASAJEROS_CONFIRMADOS'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Pasajeros Confirmados'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
,p_available_clientside=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103044104Z')
,p_updated_on=>wwv_flow_imp.dz('20261103044104Z')
,p_created_by=>'SARA'
,p_updated_by=>'SARA'
);
end;
/
prompt --application/pages/page_00100
begin
wwv_flow_imp_page.create_page(
 p_id=>100
,p_name=>unistr('RFC1 \2013 Demanda por localidad')
,p_alias=>'RFC1-DEMANDA-POR-LOCALIDAD'
,p_step_title=>unistr('RFC1 \2013 Demanda por localidad')
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261102232138Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_last_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10425872620921785616)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261102232138Z')
,p_updated_on=>wwv_flow_imp.dz('20261102232138Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10425880489793788605)
,p_plug_name=>'Demanda por localidad'
,p_static_id=>'demanda-por-localidad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261102234003Z')
,p_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10425880551865788606)
,p_region_id=>wwv_flow_imp.id(10425880489793788605)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261102234003Z')
,p_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10425880633486788607)
,p_chart_id=>wwv_flow_imp.id(10425880551865788606)
,p_static_id=>'solicitudes'
,p_seq=>10
,p_name=>'Solicitudes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.Nombre_localidad,',
'       COUNT(s.ID_solicitud) AS total_solicitudes',
'FROM Solicitudes s',
'INNER JOIN Paradas p      ON p.ID_parada      = s.Paradas_viaje_Paradas_ID_parada',
'INNER JOIN Zonas_parada z ON z.ID_zona_parada = p.Zonas_parada_ID_zona_parada',
'INNER JOIN Localidades l  ON l.ID_localidad   = z.Localidades_ID_localidad',
'WHERE s.Fecha_solicitud >= TO_DATE(:P100_FECHA_INICIO, ''YYYY-MM-DD'')',
'  AND s.Fecha_solicitud <  TO_DATE(:P100_FECHA_FIN, ''YYYY-MM-DD'') + 1',
'GROUP BY l.ID_localidad, l.Nombre_localidad',
'ORDER BY total_solicitudes DESC'))
,p_items_value_column_name=>'TOTAL_SOLICITUDES'
,p_items_label_column_name=>'NOMBRE_LOCALIDAD'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261102234003Z')
,p_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10425880792148788608)
,p_chart_id=>wwv_flow_imp.id(10425880551865788606)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Localidad'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261102234003Z')
,p_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10425880834271788609)
,p_chart_id=>wwv_flow_imp.id(10425880551865788606)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Solicitudes'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261102234003Z')
,p_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10425880057370788601)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102232939Z')
,p_updated_on=>wwv_flow_imp.dz('20261102232939Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10425880305335788604)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10425880057370788601)
,p_button_name=>'CONSULTAR'
,p_static_id=>'consultar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Consultar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102232939Z')
,p_updated_on=>wwv_flow_imp.dz('20261102232939Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425880231201788603)
,p_name=>'P100_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10425880057370788601)
,p_item_default=>'2026-12-31'
,p_prompt=>'Fecha FIN'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102232939Z')
,p_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425880101357788602)
,p_name=>'P100_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10425880057370788601)
,p_item_default=>'2026-06-01'
,p_prompt=>'Fecha Inicio'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102232939Z')
,p_updated_on=>wwv_flow_imp.dz('20261102234003Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
end;
/
prompt --application/pages/page_00110
begin
wwv_flow_imp_page.create_page(
 p_id=>110
,p_name=>'rfc2-ingresos-por-localidad'
,p_alias=>'RFC2-INGRESOS-POR-LOCALIDAD'
,p_step_title=>'rfc2-ingresos-por-localidad'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261103015304Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103015822Z')
,p_created_by=>'IVAN'
,p_last_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10447646461004694256)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103015305Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015305Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10425880941768788610)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103015821Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015821Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10425881373230788614)
,p_plug_name=>'Ingresos por localidad'
,p_static_id=>'ingresos-por-localidad'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261103015821Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015822Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10425881410296788615)
,p_region_id=>wwv_flow_imp.id(10425881373230788614)
,p_chart_type=>'bar'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261103015821Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015822Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10425881561221788616)
,p_chart_id=>wwv_flow_imp.id(10425881410296788615)
,p_static_id=>'ingresos'
,p_seq=>10
,p_name=>'Ingresos'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT l.Nombre_localidad,',
'       COUNT(*)     AS cupos_vendidos,',
'       SUM(v.Costo) AS ingresos_estimados',
'FROM Solicitudes s',
'INNER JOIN Viajes v      ON v.ID_viaje     = s.Paradas_viaje_Viajes_ID_viaje',
'INNER JOIN Localidades l ON l.ID_localidad = v.Localidades_ID_localidad',
'WHERE v.Fecha_hora_salida >= TO_DATE(:P110_FECHA_INICIO, ''YYYY-MM-DD'')',
'  AND v.Fecha_hora_salida <  TO_DATE(:P110_FECHA_FIN, ''YYYY-MM-DD'') + 1',
'  AND EXISTS (SELECT 1',
'              FROM Estados_de_solicitud e',
'              INNER JOIN Estados_solicitud es',
'                      ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud',
'              WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud',
'                AND es.Nombre_solicitud = ''Aceptada'')',
'  AND NOT EXISTS (SELECT 1',
'                  FROM Estados_de_solicitud e',
'                  INNER JOIN Estados_solicitud es',
'                          ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud',
'                  WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud',
'                    AND es.Nombre_solicitud = ''Cancelada'')',
'  AND NOT EXISTS (SELECT 1',
'                  FROM Estado_viaje ev',
'                  INNER JOIN Estados_viaje esv',
'                          ON esv.ID_estado = ev.Estados_viaje_ID_estado',
'                  WHERE ev.Viajes_ID_viaje = v.ID_viaje',
'                    AND esv.Nombre_estado = ''Cancelado'')',
'GROUP BY l.ID_localidad, l.Nombre_localidad',
'ORDER BY ingresos_estimados DESC'))
,p_items_value_column_name=>'INGRESOS_ESTIMADOS'
,p_items_label_column_name=>'NOMBRE_LOCALIDAD'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261103015822Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015822Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10425881660151788617)
,p_chart_id=>wwv_flow_imp.id(10425881410296788615)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Localidad'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261103015822Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015822Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10425881799265788618)
,p_chart_id=>wwv_flow_imp.id(10425881410296788615)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Ingresos (COP)'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261103015822Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015822Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10425881289002788613)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(10425880941768788610)
,p_button_name=>'Consultar'
,p_static_id=>'consultar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Consultar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261103015821Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015821Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425881129846788612)
,p_name=>'P110_FECHA_FIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10425880941768788610)
,p_item_default=>'2026-11-09'
,p_prompt=>'Fecha fin'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103015821Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015821Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425881065439788611)
,p_name=>'P110_FECHA_INICIO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10425880941768788610)
,p_item_default=>'2026-10-22'
,p_prompt=>'Fecha Inicio'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103015821Z')
,p_updated_on=>wwv_flow_imp.dz('20261103015821Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
end;
/
prompt --application/pages/page_00120
begin
wwv_flow_imp_page.create_page(
 p_id=>120
,p_name=>'rfc3-viajes-por-conductor'
,p_alias=>'RFC3-VIAJES-POR-CONDUCTOR'
,p_step_title=>'rfc3-viajes-por-conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'04'
,p_created_on=>wwv_flow_imp.dz('20261103020108Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103021103Z')
,p_created_by=>'IVAN'
,p_last_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10453152001974359311)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103020109Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020109Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10425881828419788619)
,p_plug_name=>'Filtros'
,p_static_id=>'filtros'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103020706Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020707Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10425882400980788625)
,p_plug_name=>'Viajes por conductor'
,p_static_id=>'viajes-por-conductor'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4075786578761660127
,p_plug_display_sequence=>20
,p_plug_item_display_point=>'ABOVE'
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
,p_created_on=>wwv_flow_imp.dz('20261103021103Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021103Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(10425882560768788626)
,p_region_id=>wwv_flow_imp.id(10425882400980788625)
,p_chart_type=>'line'
,p_height=>'400'
,p_lazy_loading=>false
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hide_and_show_behavior=>'withRescale'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'on'
,p_legend_position=>'auto'
,p_created_on=>wwv_flow_imp.dz('20261103021103Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021103Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(10425882668799788627)
,p_chart_id=>wwv_flow_imp.id(10425882560768788626)
,p_static_id=>'viajes_1'
,p_seq=>10
,p_name=>'Viajes'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONCAT(CONCAT(u.Nombre, '' ''), u.Apellido)            AS conductor,',
'       TO_CHAR(TRUNC(v.Fecha_hora_salida, ''MM''), ''YYYY-MM'') AS mes,',
'       COUNT(*)                                             AS viajes_realizados',
'FROM Viajes v',
'INNER JOIN Carros c  ON c.Placa        = v.Carros_Placa',
'INNER JOIN Usuario u ON u.Documento_ID = c.Usuario_Documento_ID',
'WHERE EXISTS (SELECT 1',
'              FROM Estado_viaje ev',
'              INNER JOIN Estados_viaje esv ON esv.ID_estado = ev.Estados_viaje_ID_estado',
'              WHERE ev.Viajes_ID_viaje = v.ID_viaje',
'                AND esv.Nombre_estado = ''Completado'')',
'  AND (:P120_CONDUCTOR    IS NULL OR u.Documento_ID             = :P120_CONDUCTOR)',
'  AND (:P120_LOCALIDAD    IS NULL OR v.Localidades_ID_localidad = :P120_LOCALIDAD)',
'  AND (:P120_FECHA_INICIO IS NULL OR v.Fecha_hora_salida >= TO_DATE(:P120_FECHA_INICIO, ''YYYY-MM-DD''))',
'  AND (:P120_FECHA_FIN    IS NULL OR v.Fecha_hora_salida <  TO_DATE(:P120_FECHA_FIN, ''YYYY-MM-DD'') + 1)',
'GROUP BY u.Documento_ID, u.Nombre, u.Apellido, TRUNC(v.Fecha_hora_salida, ''MM'')',
'ORDER BY TRUNC(v.Fecha_hora_salida, ''MM''), conductor'))
,p_series_name_column_name=>'CONDUCTOR'
,p_items_value_column_name=>'VIAJES_REALIZADOS'
,p_items_label_column_name=>'MES'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_created_on=>wwv_flow_imp.dz('20261103021103Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021103Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10425882741971788628)
,p_chart_id=>wwv_flow_imp.id(10425882560768788626)
,p_static_id=>'x'
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Mes'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
,p_created_on=>wwv_flow_imp.dz('20261103021103Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021103Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(10425882861542788629)
,p_chart_id=>wwv_flow_imp.id(10425882560768788626)
,p_static_id=>'y'
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Viajes realizados'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'auto'
,p_tick_label_rendered=>'on'
,p_created_on=>wwv_flow_imp.dz('20261103021103Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021103Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10425882369254788624)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_imp.id(10425881828419788619)
,p_button_name=>'Consultar'
,p_static_id=>'consultar'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_image_alt=>'Consultar'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261103021103Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021103Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425881997599788620)
,p_name=>'P120_CONDUCTOR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10425881828419788619)
,p_prompt=>'Conductor'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT CONCAT(CONCAT(u.Nombre, '' ''), u.Apellido) AS d,',
'       u.Documento_ID                            AS r',
'FROM Usuario u',
'WHERE u.Documento_ID IN (SELECT Usuario_Documento_ID FROM Carros)',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todos'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103020706Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020706Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425882231039788623)
,p_name=>'P120_FECHA_FIN'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_imp.id(10425881828419788619)
,p_prompt=>'Fecha fin'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103020707Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020707Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425882070157788621)
,p_name=>'P120_FECHA_INICIO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10425881828419788619)
,p_prompt=>'Fecha inicio'
,p_format_mask=>'YYYY-MM-DD'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103020706Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020706Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10425882138478788622)
,p_name=>'P120_LOCALIDAD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10425881828419788619)
,p_prompt=>'Localidad de origen'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT Nombre_localidad AS d, ID_localidad AS r',
'FROM Localidades',
'ORDER BY 1'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'Todas'
,p_cHeight=>1
,p_field_template=>1612549609962752680
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261103020706Z')
,p_updated_on=>wwv_flow_imp.dz('20261103020706Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
end;
/
prompt --application/pages/page_00130
begin
wwv_flow_imp_page.create_page(
 p_id=>130
,p_name=>'rfa1-dashboard-conductor'
,p_alias=>'RFA1-DASHBOARD-CONDUCTOR'
,p_step_title=>'rfa1-dashboard-conductor'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10470092785493360891)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261103021253Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103034654Z')
,p_created_by=>'IVAN'
,p_last_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10454519040896429772)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103021253Z')
,p_updated_on=>wwv_flow_imp.dz('20261103021253Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10425883248079788633)
,p_name=>'Mi actividad como conductor'
,p_static_id=>'mi-actividad-como-conductor'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(*)                                     AS "Viajes completados",',
'       NVL(SUM(pv.pasajeros), 0)                    AS "Pasajeros transportados",',
'       NVL(SUM(NVL(pv.pasajeros, 0) * v.Costo), 0)  AS "Ingresos (COP)",',
'       NVL(SUM(v.Duracion_estimada), 0)             AS "Minutos en viaje",',
'       NVL(SUM(v.Distancia_estimada), 0)            AS "Km recorridos"',
'FROM Viajes v',
'INNER JOIN Carros c ON c.Placa = v.Carros_Placa',
'LEFT JOIN (SELECT s.Paradas_viaje_Viajes_ID_viaje AS id_viaje,',
'                  COUNT(*)                        AS pasajeros',
'           FROM Solicitudes s',
'           WHERE EXISTS (SELECT 1',
'                         FROM Estados_de_solicitud e',
'                         INNER JOIN Estados_solicitud es',
'                                 ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud',
'                         WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud',
'                           AND es.Nombre_solicitud = ''Aceptada'')',
'             AND NOT EXISTS (SELECT 1',
'                             FROM Estados_de_solicitud e',
'                             INNER JOIN Estados_solicitud es',
'                                     ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud',
'                             WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud',
'                               AND es.Nombre_solicitud = ''Cancelada'')',
'           GROUP BY s.Paradas_viaje_Viajes_ID_viaje) pv',
'       ON pv.id_viaje = v.ID_viaje',
'WHERE c.Usuario_Documento_ID = (SELECT u.Documento_ID',
'                                FROM Usuario u',
'                                WHERE UPPER(u.Correo) = UPPER(:APP_USER))',
'  AND EXISTS (SELECT 1',
'              FROM Estado_viaje ev',
'              INNER JOIN Estados_viaje esv',
'                      ON esv.ID_estado = ev.Estados_viaje_ID_estado',
'              WHERE ev.Viajes_ID_viaje = v.ID_viaje',
'                AND esv.Nombre_estado = ''Completado'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2108071605011515574
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103021815Z')
,p_updated_on=>wwv_flow_imp.dz('20261103024659Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425883514392788636)
,p_query_column_id=>3
,p_column_alias=>'Ingresos (COP)'
,p_column_display_sequence=>30
,p_column_heading=>'Ingresos (cop)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103021815Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425883782185788638)
,p_query_column_id=>5
,p_column_alias=>'Km recorridos'
,p_column_display_sequence=>50
,p_column_heading=>'Km Recorridos'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103021815Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425883687761788637)
,p_query_column_id=>4
,p_column_alias=>'Minutos en viaje'
,p_column_display_sequence=>40
,p_column_heading=>'Minutos En Viaje'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103021815Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425883460490788635)
,p_query_column_id=>2
,p_column_alias=>'Pasajeros transportados'
,p_column_display_sequence=>20
,p_column_heading=>'Pasajeros Transportados'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103021815Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425883387725788634)
,p_query_column_id=>1
,p_column_alias=>'Viajes completados'
,p_column_display_sequence=>10
,p_column_heading=>'Viajes Completados'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103021815Z')
,p_updated_by=>'IVAN'
);
end;
/
prompt --application/pages/page_00140
begin
wwv_flow_imp_page.create_page(
 p_id=>140
,p_name=>'rfa2-dashboard-usuario'
,p_alias=>'RFA2-DASHBOARD-USUARIO'
,p_step_title=>'rfa2-dashboard-usuario'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>4075783602716660119
,p_page_template_options=>'#DEFAULT#'
,p_required_role=>wwv_flow_imp.id(10470537806069365370)
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_created_on=>wwv_flow_imp.dz('20261103022930Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261103034723Z')
,p_created_by=>'IVAN'
,p_last_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10459402509496529541)
,p_plug_name=>'Breadcrumb'
,p_static_id=>'breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2534890969069732905
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_item_display_point=>'ABOVE'
,p_menu_id=>wwv_flow_imp.id(10096210831807611924)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4075790987805660140
,p_created_on=>wwv_flow_imp.dz('20261103022931Z')
,p_updated_on=>wwv_flow_imp.dz('20261103022931Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10425884115291788642)
,p_name=>'Mis viajes como pasajero'
,p_static_id=>'mis-viajes-como-pasajero'
,p_template=>4075786578761660127
,p_display_sequence=>20
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COUNT(DISTINCT v.ID_viaje)           AS "Viajes tomados",',
'       NVL(SUM(v.Costo), 0)                 AS "Total gastado (COP)",',
'       ROUND(AVG(v.Distancia_estimada), 1)  AS "Distancia promedio (km)",',
'       ROUND(AVG(v.Duracion_estimada))      AS "Tiempo promedio (min)"',
'FROM Solicitudes s',
'INNER JOIN Viajes v ON v.ID_viaje = s.Paradas_viaje_Viajes_ID_viaje',
'WHERE s.Usuario_Documento_ID = (SELECT u.Documento_ID',
'                                FROM Usuario u',
'                                WHERE UPPER(u.Correo) = UPPER(:APP_USER))',
'  AND EXISTS (SELECT 1',
'              FROM Estados_de_solicitud e',
'              INNER JOIN Estados_solicitud es',
'                      ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud',
'              WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud',
'                AND es.Nombre_solicitud = ''Aceptada'')',
'  AND NOT EXISTS (SELECT 1',
'                  FROM Estados_de_solicitud e',
'                  INNER JOIN Estados_solicitud es',
'                          ON es.ID_estado_solicitud = e.Estados_solicitud_ID_estado_solicitud',
'                  WHERE e.Solicitudes_ID_solicitud = s.ID_solicitud',
'                    AND es.Nombre_solicitud = ''Cancelada'')',
'  AND EXISTS (SELECT 1',
'              FROM Estado_viaje ev',
'              INNER JOIN Estados_viaje esv',
'                      ON esv.ID_estado = ev.Estados_viaje_ID_estado',
'              WHERE ev.Viajes_ID_viaje = v.ID_viaje',
'                AND esv.Nombre_estado = ''Completado'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2108071605011515574
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103023340Z')
,p_updated_on=>wwv_flow_imp.dz('20261103031427Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425884447069788645)
,p_query_column_id=>3
,p_column_alias=>'Distancia promedio (km)'
,p_column_display_sequence=>30
,p_column_heading=>'Distancia Promedio (km)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103023340Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425884532158788646)
,p_query_column_id=>4
,p_column_alias=>'Tiempo promedio (min)'
,p_column_display_sequence=>40
,p_column_heading=>'Tiempo Promedio (min)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103023340Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425884357701788644)
,p_query_column_id=>2
,p_column_alias=>'Total gastado (COP)'
,p_column_display_sequence=>20
,p_column_heading=>'Total Gastado (cop)'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103023340Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425884286854788643)
,p_query_column_id=>1
,p_column_alias=>'Viajes tomados'
,p_column_display_sequence=>10
,p_column_heading=>'Viajes Tomados'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103023340Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(10425884665440788647)
,p_name=>unistr('Zona donde m\00E1s pido viajes')
,p_static_id=>unistr('zona-donde-m\00E1s-pido-viajes')
,p_template=>4075786578761660127
,p_display_sequence=>30
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-BadgeList--large:t-BadgeList--fixed:t-BadgeList--circular'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT z.Nombre_zona AS "Zona m\00E1s frecuente",'),
'       COUNT(*)      AS "Solicitudes en esa zona"',
'FROM Solicitudes s',
'INNER JOIN Paradas p      ON p.ID_parada      = s.Paradas_viaje_Paradas_ID_parada',
'INNER JOIN Zonas_parada z ON z.ID_zona_parada = p.Zonas_parada_ID_zona_parada',
'WHERE s.Usuario_Documento_ID = (SELECT u.Documento_ID',
'                                FROM Usuario u',
'                                WHERE UPPER(u.Correo) = UPPER(:APP_USER))',
'GROUP BY z.ID_zona_parada, z.Nombre_zona',
'ORDER BY COUNT(*) DESC',
'FETCH FIRST 1 ROWS ONLY'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>2108071605011515574
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>unistr('A\00FAn no has solicitado viajes')
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
,p_created_on=>wwv_flow_imp.dz('20261103023520Z')
,p_updated_on=>wwv_flow_imp.dz('20261103031427Z')
,p_created_by=>'IVAN'
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425884893300788649)
,p_query_column_id=>2
,p_column_alias=>'Solicitudes en esa zona'
,p_column_display_sequence=>20
,p_column_heading=>'Solicitudes En Esa Zona'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103023520Z')
,p_updated_by=>'IVAN'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(10425884761278788648)
,p_query_column_id=>1
,p_column_alias=>unistr('Zona m\00E1s frecuente')
,p_column_display_sequence=>10
,p_column_heading=>unistr('Zona M\00E1s Frecuente')
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
,p_updated_on=>wwv_flow_imp.dz('20261103023520Z')
,p_updated_by=>'IVAN'
);
end;
/
prompt --application/pages/page_09999
begin
wwv_flow_imp_page.create_page(
 p_id=>9999
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Wheels Alpes - Log In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_step_template=>2104585595298951431
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_protection_level=>'C'
,p_page_component_map=>'12'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_last_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_last_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10096216649715611938)
,p_plug_name=>'Wheels Alpes'
,p_static_id=>'wheels-alpes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2677585639786677191
,p_plug_display_sequence=>10
,p_plug_item_display_point=>'ABOVE'
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10096218492715611972)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(10096216649715611938)
,p_button_name=>'LOGIN'
,p_static_id=>'login'
,p_show_as_disabled=>false
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4075790603270660137
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_grid_new_row=>'Y'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10096217765125611971)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(10096216649715611938)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="current-password"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'submit_when_enter_pressed', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10096218184776611972)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(10096216649715611938)
,p_prompt=>'Remember username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_label_alignment=>'RIGHT'
,p_display_when=>'apex_authentication.persistent_cookies_enabled'
,p_display_when2=>'PLSQL'
,p_display_when_type=>'EXPRESSION'
,p_field_template=>2044213549383960320
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(10096217335982611970)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(10096216649715611938)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_source_type=>'ALWAYS_NULL'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_tag_attributes=>'autocomplete="username"'
,p_label_alignment=>'RIGHT'
,p_field_template=>2044213549383960320
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'disabled', 'N',
  'submit_when_enter_pressed', 'N',
  'subtype', 'TEXT',
  'trim_spaces', 'BOTH')).to_clob
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10096222465133611976)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_static_id=>'clear-page-s-cache'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'type', 'CLEAR_CACHE_CURRENT_PAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10096222465133611976
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10096222008895611976)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_static_id=>'get-username-cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>10096222008895611976
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10096218854919611973)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Login'
,p_static_id=>'login'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'LOGIN',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10096218854919611973
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10096219860816611974)
,p_page_process_id=>wwv_flow_imp.id(10096218854919611973)
,p_page_id=>9999
,p_name=>'p_password'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_PASSWORD'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10096220245776611974)
,p_page_process_id=>wwv_flow_imp.id(10096218854919611973)
,p_page_id=>9999
,p_name=>'p_set_persistent_auth'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>true
,p_display_sequence=>3
,p_value_type=>'API_DEFAULT'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10096219399571611973)
,p_page_process_id=>wwv_flow_imp.id(10096218854919611973)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'ITEM'
,p_value=>'P9999_USERNAME'
,p_created_on=>wwv_flow_imp.dz('20261102061241Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061241Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(10096220648458611975)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_INVOKE_API'
,p_process_name=>'Set Username Cookie'
,p_static_id=>'set-username-cookie'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'package', 'APEX_AUTHENTICATION',
  'package_method', 'SEND_LOGIN_USERNAME_COOKIE',
  'type', 'PLSQL_PACKAGE')).to_clob
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>10096220648458611975
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10096221608666611975)
,p_page_process_id=>wwv_flow_imp.id(10096220648458611975)
,p_page_id=>9999
,p_name=>'p_consent'
,p_direction=>'IN'
,p_data_type=>'BOOLEAN'
,p_has_default=>false
,p_display_sequence=>2
,p_value_type=>'ITEM'
,p_value=>'P9999_REMEMBER'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
wwv_flow_imp_shared.create_invokeapi_comp_param(
 p_id=>wwv_flow_imp.id(10096221175652611975)
,p_page_process_id=>wwv_flow_imp.id(10096220648458611975)
,p_page_id=>9999
,p_name=>'p_username'
,p_direction=>'IN'
,p_data_type=>'VARCHAR2'
,p_has_default=>false
,p_display_sequence=>1
,p_value_type=>'EXPRESSION'
,p_value_language=>'PLSQL'
,p_value=>'lower( :P9999_USERNAME )'
,p_created_on=>wwv_flow_imp.dz('20261102061242Z')
,p_updated_on=>wwv_flow_imp.dz('20261102061242Z')
,p_created_by=>'S.MORAN@UNIANDES.EDU.CO'
,p_updated_by=>'S.MORAN@UNIANDES.EDU.CO'
);
end;
/
prompt --application/deployment/definition
begin
null;
end;
/
prompt --application/deployment/checks
begin
null;
end;
/
prompt --application/deployment/buildoptions
begin
null;
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
