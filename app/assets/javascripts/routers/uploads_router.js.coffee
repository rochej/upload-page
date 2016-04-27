# in a larger app, consider adding a seperate controller http://pragmatic-backbone.com/routing-and-controllers

class UploadPage.Routers.Uploads extends Marionette.AppRouter
  routes:
    '': 'index',

  initialize: ->
    self = this
    UploadPage.vent.on 'upload:added', (type, event) ->
      self.createUpload(type, event)

  createUpload: (type, event)->
    filename = $('#upload-file')[0].files[0].name
    type.uploads.create({filename: filename},
      {
        wait: true,
        success: (model, response, options)->
          UploadPage.vent.trigger 'upload:saved', model
      }
    )


  index: ->
    @types = new UploadPage.Collections.Types()
    @types.fetch()
    view = new UploadPage.Views.PageLayout({collection: @types})
    $('#hook').html(view.render().el)
