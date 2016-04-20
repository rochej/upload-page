var Marionette = require('backbone.marionette');
var FileView = require('./views/layout');
var FileModel = require('./models/file');


var initialData = [
      {filename: 'la', created_at: 'la', status: 'la'}
];

var app = new Marionette.Application({
  onStart: function(options){
    var file = new FileView({
      collection: new Backbone.Collection(options.initialData),
      model: new FileModel()
    });
    file.render();
    file.triggerMethod('show');
  }
})

app.start({initialData: initialData});