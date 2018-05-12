/*-------------------------------------
 * APEX Store Location
 * Version: 1.0 (22-09-2017)
 * Author:  Dick Dral
 *-------------------------------------
*/
FUNCTION render_store_location(p_dynamic_action IN apex_plugin.t_dynamic_action,
                               p_plugin         IN apex_plugin.t_plugin)
  RETURN apex_plugin.t_dynamic_action_render_result IS
  --
  -- plugin attributes
  l_result       apex_plugin.t_dynamic_action_render_result;
  --
  l_latitude_item   varchar2(100)  := p_dynamic_action.attribute_01;
  l_longitude_item  varchar2(100)  := p_dynamic_action.attribute_02;
  --
BEGIN
  --
  l_result.javascript_function := 'apex_store_location.doIt';
  l_result.attribute_01        := l_latitude_item;
  l_result.attribute_02        := l_longitude_item;
  --
  RETURN l_result;
  --
END render_store_location;