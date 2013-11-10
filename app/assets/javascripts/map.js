$(document).ready(function() {

  var map_options = {
    center: new google.maps.LatLng(51, 0),
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  
  map = new google.maps.Map($('#map_ground')[0], map_options);
  
});  