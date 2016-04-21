var Marionette = require('backbone.marionette')

var Alert = Marionette.ItemView.extend({
  tagName: 'div',
  template: require('../templates/alert.html'),
  onBeforeRender: function(){
    // this.model: this.collection.pop
    console.log("before render");
  },
  modelEvents: {
    change: 'render'
  },
  sayHello: function(){
    console.log(this.model.attributes)
  }
});

module.exports = Alert;