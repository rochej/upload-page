var Backbone = require('backbone');
var Marionette = require('backbone.marionette');

var File = Marionette.LayoutView.extend({
  tagName: 'li',
  template: require('./templates/fileitem.html')
});

var UploadPage = Marionette.CollectionView.extend({
  el: '#app-hook',
  tagName: 'ul',
  childView: File
});

var page = new UploadPage({
  collection: new Backbone.Collection(
    [
      {filename: "thing.txt", created_at: "04/18/2016", status: "Uploaded"},
      {filename: "thing2.txt", created: "04/18/2016", status: "Uploaded"}
    ]
  )
});

page.render();