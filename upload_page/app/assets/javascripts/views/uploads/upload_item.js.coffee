class UploadPage.Views.UploadItem extends Marionette.ItemView
  tagName: 'tr'
  template: JST['uploads/upload_item']
  events:
    'click .btn-del': 'deleteUpload'

  modelEvents:
    'change': 'render'

  deleteUpload: ->
    @model.destroy()