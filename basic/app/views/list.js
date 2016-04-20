var Marionette = require('backbone.marionette');

var File = Marionette.LayoutView.extend({
  tagName: 'li',
  template: require('../templates/fileitem.html')
});

var FileList = Marionette.CollectionView.extend({
  tagName: 'ul',
  childview: File
});

module.exports = FileList;