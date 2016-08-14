mapboxgl.accessToken = 'pk.eyJ1IjoibWljaGFlbGFyYW5kYS13ZWIiLCJhIjoiY2lyYjhldXM2MDE1a2dmbTkzOG02Z2p4cyJ9.RkBDl1dPvRx-WZORlkPweg';

function InitialMap(mapbox, markerUrl) {
  var currentStartingPoint;
  
  mapbox.on('contextmenu', function(e) {
     addStartingPoint(e);
  });
  
  function addStartingPoint(e) {
    var el = document.createElement('div');
    el.className = 'marker';
    el.style.backgroundImage = markerUrl;
    
    if(this.currentStartingPoint != undefined) {
      this.currentStartingPoint.remove();
    }
    this.currentStartingPoint = new mapboxgl.Marker(el).setLngLat([e.lngLat.lng, e.lngLat.lat]).addTo(mapbox);
    
    updateStartingLatLng(e);
  }
  
  function updateStartingLatLng(e) {
    $('#map_starting_latitude').val(e.lngLat.lat);
    $('#map_starting_longitude').val(e.lngLat.lng);
  }
}