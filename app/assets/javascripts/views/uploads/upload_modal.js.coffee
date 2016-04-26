class UploadPage.Views.UploadModal extends Marionette.ItemView
  tagname: 'div'
  template: JST['uploads/upload_modal']

  events:
    'click .btn-save': -> UploadPage.vent.trigger 'upload:added', @model