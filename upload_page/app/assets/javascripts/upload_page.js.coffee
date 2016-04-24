window.UploadPage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @vent = _.extend({}, Backbone.Events)
    new UploadPage.Routers.Uploads();
    Backbone.history.start();

$(document).ready ->
  UploadPage.initialize()
