class UploadPage.Routers.Uploads extends Marionette.AppRouter
  routes:
    '': 'index',

  initialize: ->
    @types = new UploadPage.Collections.Types()
    @types.fetch()

  index: ->
    view = new UploadPage.Views.PageLayout(collection: @types)
    $('#hook').html(view.render().el)
