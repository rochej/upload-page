class UploadPage.Routers.Uploads extends Marionette.AppRouter
  routes:
    '': 'index',

  index: ->
    @types = new UploadPage.Collections.Types()
    @types.fetch()
    view = new UploadPage.Views.PageLayout({collection: @types})
    $('#hook').html(view.render().el)
