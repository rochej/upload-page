class UploadPage.Views.UploadItem extends Marionette.ItemView
  tagName: 'tr'
  template: JST['uploads/upload_item']
  templateHelpers: ->
    # debugger
    statusMessage: if this.status == true then "Uploaded successfully" else "Pending"



  events:
    'click .btn-del': 'deleteUpload'

  modelEvents:
    'change': 'render'

  deleteUpload: ->
    @model.destroy()