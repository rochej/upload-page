window.UploadPage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    new UploadPage.Routers.Uploads();
    Backbone.history.start();
    this.vent = _.extend({}, Backbone.Events)

$(document).ready ->
  UploadPage.initialize()
  UploadPage.vent.on 'some:event', ->
    alert 'some event was fired!'
    return
  # UploadPage.vent.trigger 'some:event'
