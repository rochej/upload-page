class UploadPage.Routers.Uploads extends Marionette.AppRouter
  routes:
    '': 'index',

  initialize: ->
    self = this
    UploadPage.vent.on 'add:upload:item', (type) ->
      self.createUpload(type)

  createUpload: (type)->
    type.uploads.create({wait: true})

  index: ->
    @types = new UploadPage.Collections.Types()
    @types.fetch()
    view = new UploadPage.Views.PageLayout({collection: @types})
    $('#hook').html(view.render().el)
