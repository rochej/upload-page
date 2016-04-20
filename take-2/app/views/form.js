var Marionette = require('backbone.marionette');

var FormView = Marionette.LayoutView.extend({
  tagName: 'form',
  template: require('../templates/fileform.html'),

  triggers: {
    submit: 'add:file:item'
  },

  modelEvents: {
    change: 'render'
  },

  ui: {
    filename: '#id_filename',
    form: 'form',
    status: '#id_status',
    created_at: '#id_created_at'
  }
});

module.exports = FormView;