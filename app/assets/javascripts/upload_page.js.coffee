window.UploadPage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    # create app wide message bus
    @vent = _.extend({}, Backbone.Events)
    new UploadPage.Routers.Uploads();
    Backbone.history.start() unless Backbone.History.started

$(document).ready ->
  UploadPage.initialize()
