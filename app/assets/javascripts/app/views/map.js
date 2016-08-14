MapApp.app.views.Map = Backbone.View.extend({
  el: '#map-frame',

  initialize: function(options) {
    this.map = options.map
    this.render();
  },
  
  render: function() {
    var mapbox = new mapboxgl.Map({
      container: 'map-frame',
      center: [this.map.get('starting_longitude'), this.map.get('starting_latitude')],
      zoom: 13,
      style: 'mapbox://styles/mapbox/streets-v9'
    });
    
    $('.map-header').html(this.map.get('name'));
    
    // this.$el.html(
    //   "<table>" +
    //     "<tbody>" +
    //       "<tr><td>" + this.map.get('name') + "</td></tr>" +
    //       "<tr><td>" + this.map.get('starting_latitude') + "</td></tr>" +
    //       "<tr><td>" + this.map.get('starting_longitude') + "</td></tr>" +
    //     "</tbody>" +
    //   "</table>"
    // );
    
    return this;
  }
});