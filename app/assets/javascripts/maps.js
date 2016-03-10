//Map
function Map(mapElem){
  this.mapElem = mapElem;
}

Map.prototype.init = function(latitude, longitude){
  var options = {
    center: {lat: latitude, lng: longitude},
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  this.canvas = new google.maps.Map(this.mapElem, options);
};

//Add marker

Map.prototype.addMarker = function(latitude, longitude){
  var options = {
    position: {lat: latitude, lng: longitude},
    map: this.canvas,
    title: "Deana Slater Counselling Services"
  };

  var myMarker = new google.maps.Marker(options);
};

$(document).on("ready page:load", function(){
  if ($("#map-canvas").length){
    window.myMap = new Map($("#map-canvas")[0]);
    //[0] transforming a Javascript into a Jquery object
    myMap.init(43.662135, -79.378707);
    myMap.addMarker(43.662135, -79.378707);
  }
});


