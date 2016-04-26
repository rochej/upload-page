window.UploadPage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @vent = _.extend({}, Backbone.Events)
    new UploadPage.Routers.Uploads();
    Backbone.history.start() unless Backbone.History.started
    if window.__agent
      window.__agent.start Backbone, Marionette

$(document).ready ->
  UploadPage.initialize()
