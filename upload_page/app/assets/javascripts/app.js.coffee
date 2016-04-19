@UploadPage = do (Backbone, Marionette) ->

  App = new Marionette.Application
  App.addRegions
    main: "#hook"

  App.on "initialize:after", ->
    if Backbone.history
      Backbone.history.start()

  App