var Backbone = require('backbone');
var Marionette = require('backbone.marionette');

var File = Marionette.LayoutView.extend({
  tagName: 'li',
  template: require('./templates/fileitem.html')
});

var UploadPage = Marionette.CompositeView.extend({
  el: '#app-hook',
  template: require('./templates/filelist.html'),
  childView: File,
  childViewContainer: 'ul',
  ui:{
    filename: "#id_filename",
    form: 'form',
    status: "#id_status"
  },
  triggers: {
    'submit @ui.form': 'add:file:item'
  },
  collectionEvents:{
    add: 'itemAdded'
  },
  onAddFileItem: function(){
    this.collection.add({
      filename: this.ui.filename.val(),
      status: this.ui.status.val()
    });
  },
  itemAdded: function(){
    this.ui.filename.val('');
    this.ui.status.val('');
  }
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