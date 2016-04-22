class UploadPage.Routers.Uploads extends Marionette.AppRouter
  routes:
    '': 'index',

  initialize: ->
    @collection = new UploadPage.Collections.Uploads()
    @collection.fetch()

  index: ->
    view = new UploadPage.Views.UploadLayout(collection: @collection)
    $('#hook').html(view.render().el)
