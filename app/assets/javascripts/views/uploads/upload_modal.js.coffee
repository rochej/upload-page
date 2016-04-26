class UploadPage.Views.UploadModal extends Marionette.ItemView
  tagname: 'div'
  template: JST['uploads/upload_modal']

  initialize: ->
    _.bindAll(this, 'keyListener')
    $(document).bind('keydown', @keyListener)

  events:
    'submit form': -> UploadPage.vent.trigger 'upload:added', @model, event
    'click .btn-close' : -> UploadPage.vent.trigger 'upload:canceled', @model, event

  keyListener: ->
    if event.keyCode == 27
      UploadPage.vent.trigger 'upload:canceled', @model, event
    else if event.keyCode == 13
      UploadPage.vent.trigger 'upload:added', @model, event

