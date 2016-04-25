class UploadPage.Views.UploadItem extends Marionette.ItemView
  tagName: 'tr'
  template: JST['uploads/upload_item']
  templateHelpers: ->
    {
      icon:
        if (this.model.get('filename')).indexOf(".pdf") > -1
          "fa fa-file-pdf-o"
        else if (this.model.get('filename')).indexOf(".txt") > -1
          "fa fa-file-text-o"
        else if (this.model.get('filename')).indexOf(".jpeg") > -1
          "fa fa-file-image-o"
        else if (this.model.get('filename')).indexOf(".jpg") > -1
          "fa fa-file-image-o"
        else
          "fa fa-file-o"
      statusMessage: if this.status == true then "Uploaded successfully" else "Pending"
    }


  events:
    'click .btn-del': 'deleteUpload'

  modelEvents:
    'change': 'render'

  deleteUpload: ->
    @model.destroy()