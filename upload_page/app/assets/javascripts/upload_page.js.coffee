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
  UploadPage.vent = _.extend({}, Backbone.Events)
  UploadPage.vent.on 'some:event', ->
    alert 'some event was fired!'
    return
  UploadPage.vent.trigger 'some:event'
