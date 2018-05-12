// APEX Store Location
// Author: Dick Dral (Detora)
// Version: 0.1
// Date: September 22th, 2017

// global namespace
var apex_store_location = {

latitude_item : "",
longitude_item: "",
vLogging      : "",

enable_logging: function ()
 { apex_store_location.vLogging = true;
 },

store_location_values: function( position ) {
  var latitude  = apex_store_location.toFixed(position.coords.latitude);
  var longitude = apex_store_location.toFixed(position.coords.longitude);
  apex.item(latitude_item).setValue(latitude);
  apex.item(longitude_item).setValue(longitude);
  if (apex_store_location.vLogging)
  { console.log('Geo Location:',position); }
  
  // raise event that location has been retrieved
  $('html').trigger('location-retrieved');
},
/* round value to 6 decimals */
toFixed: function ( value )
{
   value = Math.round(value * 1000000)/1000000;
   return ( value );
},

get_location: function ( p_latitude_item, p_longitude_item )
{
  latitude_item  = p_latitude_item;
  longitude_item = p_longitude_item;

  navigator.geolocation.getCurrentPosition(apex_store_location.store_location_values);  
          
},

    // function that gets called from plugin
    doIt: function() {
        // plugin attributes
        var daThis = this;
        var latitude_item   = daThis.action.attribute01;
        var longitude_item  = daThis.action.attribute02;
        // Logging
        if (apex_store_location.vLogging) {
            console.log('Store Location: latitude_item =', latitude_item);
            console.log('Store Location: longitude_item=', longitude_item);
        }
        apex_store_location.get_location(latitude_item,longitude_item);
    }
};
