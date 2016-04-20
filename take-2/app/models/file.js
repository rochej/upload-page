var Backbone = require('backbone');


var File = Backbone.Model.extend({
  defaults: {
    filename: '',
    created_at: '',
    status: ''
  },

  validate: function(attrs) {
    var errors = {};
    var hasError = false;
    if (!attrs.filename) {
      errors.filename = 'filename must be set';
      hasError = true;
    }
    if (!attrs.status) {
      errors.status = 'status must be set';
      hasError = true;
    }

    if (hasError) {
      return errors;
    }
  }
});

module.exports = File;