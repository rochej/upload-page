window.UploadPage =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    @vent = _.extend({}, Backbone.Events)
    new UploadPage.Routers.Uploads();
    Backbone.history.start();
    if window.__agent
      window.__agent.start Backbone, Marionette

$(document).ready ->
  UploadPage.initialize()

# UploadPage = new Marionette.Application
# UploadPage.on('start')

# window.UploadPage =
#   Models: {}
#   Collections: {}
#   Views: {}
#   Routers: {}
#   initialize: ->
#     @vent = _.extend({}, Backbone.Events)
#     new UploadPage.Routers.Uploads();
#     Backbone.history.start();
#     if window.__agent
#       window.__agent.start Backbone, Marionette

# $(document).ready ->
#   UploadPage.initialize()
