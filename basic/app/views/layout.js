var Backbone = require('backbone');
var Marionette = require('backbone.marionette');
var FileModel = require('../models/file');

var FormView = require('./form');
var ListView = require('./list');

var Layout = Marionette.LayoutView.extend({
  el: '#app-hook',
  template: require('../templates/layout.html'),

  regions: {
    form: '.form',
    list: '.list'
  },

  collectionEvents: {
    add: 'itemAdded'
  },

  onShow: function(){
    var formView = new FormView({model: this.model});
    var listView = new ListView({collection: this.collection});

    this.showChildView('form', formView);
    this.showChildView('list', listView);
  },

  onChildviewAddFileItem: function(child){
    this.model.set({
      filename: child.ui.filename.val(),
      status: child.ui.status.val()
    }, {validate: true});

    var items = this.model.pick('filename', 'text');
    this.collection.add(items);
  },

  itemAdded: function(){
    this.model.set({
      filename: '',
      status: ''
    });
  }
});

