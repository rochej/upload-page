var Marionette = require('backbone.marionette');
var UploadPage = require('./views/layout');

var initialData = [
  {filename: "thing.txt", created_at: "04/18/2016", status: "Uploaded"},
  {filename: "thing2.txt", created_at: "04/18/2016", status: "Uploaded"}
];


var app = new Marionette.Application({
  onStart: function(options){
    var page = new UploadPage({
      collection: new Backbone.Collection(options.initialData),
      model: new File()
    });
    page.render();
    page.triggerMethod('show');
  }
});

app.start({initialData: initialData});