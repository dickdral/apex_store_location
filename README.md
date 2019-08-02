# Oracle APEX Dynamic Action Plugin -  Store location
Oracle APEX plug-in for retrieving the GPS location and storing it in APEX items.

## Change history
- V1.0    Initial version

## Requirements
The plugin can be used with APEX 5.0 and APEX 5.1. 

## Install
- Import plugin file "dynamic_action_plugin_nl_detora_apex_storelocation.sql" from source directory into your application
- Create a Page load dynamic action in which you call the plugin
- Fill in the APEX items for the latitude and longitude as attributes of the plug-in
- Getting the location is an asynchronous process. When the location has been retrieved and filled into the items, the trigger 'location_retrieved' is fired. You can use this as a trigger for an APEX custom event on JQuery 'html'. This way you can have your page act when the location has been found. 

## Plugin Settings
No settings are needed.

## Demo Application
http://www.speech2form.com/ords/f?p=OPFG:STORELOCATION

## Preview
![](https://raw.githubusercontent.com/dickdral/apex_store_location/master/storelocation_example.gif?raw=true)
---
