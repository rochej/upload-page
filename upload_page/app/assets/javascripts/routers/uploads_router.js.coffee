class UploadPage.Routers.Uploads extends Backbone.Router
  routes:
    '': 'index',
    'uploads/:id': 'show'

  initialize: ->
    @collection = new UploadPage.Collections.Uploads()
    @collection.fetch()


  index: ->
    view = new UploadPage.Views.UploadsIndex(collection: @collection)
    $('#hook').html(view.render().el)

  show: (id) ->
    alert "Upload #{id}"
