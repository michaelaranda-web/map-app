MapApp.app.views.Map = Backbone.View.extend({
  el: '#map',

  initialize: function(options) {
    this.map = options.map
    this.render();
  },
  
  render: function() {
    this.$el.html(
      "<table>" +
        "<tbody>" +
          "<tr><td>" + this.map.get('name') + "</td></tr>" +
          "<tr><td>" + this.map.get('starting_latitude') + "</td></tr>" +
          "<tr><td>" + this.map.get('starting_longitude') + "</td></tr>" +
        "</tbody>" +
      "</table>"
    );
    
    return this;
  }
});