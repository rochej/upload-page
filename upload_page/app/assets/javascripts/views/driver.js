var Marionette = require('backbone.marionette');

var SupportingDocs = Marionette.LayoutView.extend({
  el: '#hook',
  template: require('.templates/layout.html')
});

var page = new SupportingDocs();

page.render();