var Marionette = require('backbone.marionette')

var Alert = Marionette.ItemView.extend({
  tagName: 'div'
  template: require('../templates/files/alert.html')
});

module.exports = Alert;