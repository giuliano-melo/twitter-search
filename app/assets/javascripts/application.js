// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
var map;
var marker;
var mapCanvas = document.getElementById('map-canvas');

function initialize() {
  console.log('initializing google maps...');
  var mapOptions = {
    center: new google.maps.LatLng(-16.675710, -49.265213),
    zoom: 15,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  }
  map = new google.maps.Map(mapCanvas, mapOptions);
}

function addMarkerToMap(coord) {
    if(marker) marker.setMap(null);
    var location = new google.maps.LatLng(coord[0], coord[1]);
    marker = new google.maps.Marker({map:map, position: location});
    map.panTo(location);
    mapCanvas.scrollIntoView();
}

google.maps.event.addDomListener(window, 'load', initialize);