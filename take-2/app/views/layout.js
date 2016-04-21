var Marionette = require('backbone.marionette');
var Backbone = require('backbone');
var FileModel = require('../models/file');

var FormView = require('./form');
var ListView = require('./list');
var AlertView = require('./alert');




var Layout = Marionette.LayoutView.extend({
  el: '#app-hook',
  template: require('../templates/layout.html'),

  regions: {
    alert: '.alert',
    form: '.form',
    list: '.list'
  },

  collectionEvents: {
    add: 'itemAdded'
  },

  onShow: function(){
    var alertView = new AlertView({model: this.model, collection: this.collection});
    var formView = new FormView({model: this.model});
    var listView = new ListView({collection: this.collection});

    this.showChildView('alert', alertView);
    this.showChildView('form', formView);
    this.showChildView('list', listView);
  },

  onChildviewAddFileItem: function(child){
    this.model.set({
      filename: child.ui.filename.val(),
      created_at: child.ui.created_at.val(),
      status: child.ui.status.val()
    },{validate: true});
    var items = this.model.pick('filename', 'created_at', 'status');
    this.collection.add(items);
  },

  itemAdded: function(){
    // console.log("hello")
    this.model.set({
      filename: '',
      created_at: '',
      status: ''
    });
  }
});

module.exports = Layout;
