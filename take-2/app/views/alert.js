var Marionette = require('backbone.marionette')

var Alert = Marionette.ItemView.extend({
  tagName: 'div',
  template: require('../templates/alert.html'),
  initialize: function(){
    this.listenTo(this.model, "change", this.sayHello)
  },
  sayHello: function(){
    console.log("hello")
  }
});

module.exports = Alert;