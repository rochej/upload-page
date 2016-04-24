class UploadPage.Routers.Uploads extends Marionette.AppRouter
  routes:
    '': 'index',

  initialize: ->
    self = this
    UploadPage.vent.on 'upload:added', (type) ->
      self.createUpload(type)

  createUpload: (type)->
    type.uploads.create({filename: "joe"}, {wait: true, success: (model, response, options)-> UploadPage.vent.trigger 'upload:saved', model})

  index: ->
    @types = new UploadPage.Collections.Types()
    @types.fetch()
    view = new UploadPage.Views.PageLayout({collection: @types})
    $('#hook').html(view.render().el)
