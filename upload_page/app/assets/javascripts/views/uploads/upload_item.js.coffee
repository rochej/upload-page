class UploadPage.Views.UploadItem extends Backbone.View

  template: JST['uploads/upload_item']
  tagName: 'tr'

  render: ->
    $(@el).html(@template(upload: @model))
    this