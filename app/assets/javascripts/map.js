$(document).ready(function() {

  var map_options = {
    center: new google.maps.LatLng(51, 0),
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  
  map = new google.maps.Map($('#map_ground')[0], map_options);

  addMarkers();
  
  $('body').on("ajax:success", addMarkers())
});  

function addMarkers(){
  $.ajax({
    url: '../todos/index.json',
    dataType: 'json',
    success: function(json){

    _(json).each(function(todo){
      var myLatlng = new google.maps.LatLng(todo.latitude, todo.longitude, todo.name)
      var marker = new google.maps.Marker({
        position: myLatlng,
        map: map,
        title: todo.name
        })
      });
    }
  });
};