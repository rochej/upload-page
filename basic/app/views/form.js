var Marionette = require('backbone.marionette');

var FormView = Marionette.LayoutView.extend({
  tagName: 'form',
  template: require('../templates/form.html'),

  triggers: {
    submit: 'add:file:item'
  },

  modelEvents: {
    change: 'render'
  },

  ui: {
    filename: '#id_filename',
    status: '#id_status'
  }
});

module.exports = FormView;