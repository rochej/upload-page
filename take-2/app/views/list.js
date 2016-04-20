var Marionette = require('backbone.marionette')

// why layout rather than item?  try to switch
var File = Marionette.LayoutView.extend({
  tagName: 'tr',
  template: require('../templates/fileitem.html')
});

var FileList = Marionette.CollectionView.extend({
  tagName: 'table',
  childView: File
});

module.exports = FileList;