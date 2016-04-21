class UploadPage.Views.UploadsIndex extends Backbone.View

  template: JST['uploads/index']

  initialize: ->
    @collection.on('sync', @render, this)

  render: ->
    $(@el).html(@template(uploads: @collection))
    this
