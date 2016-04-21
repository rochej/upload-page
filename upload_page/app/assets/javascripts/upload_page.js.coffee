window.UploadPage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new UploadPage.Routers.Uploads();
    Backbone.history.start();

$(document).ready ->
  UploadPage.initialize()
