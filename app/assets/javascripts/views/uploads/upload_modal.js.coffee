class UploadPage.Views.UploadModal extends Marionette.ItemView
  tagname: 'div'
  template: JST['uploads/upload_modal']

  events:
    'submit form': -> UploadPage.vent.trigger 'upload:added', @model, event