class UploadPage.Views.UploadModal extends Marionette.ItemView
  tagname: 'div'
  template: JST['uploads/upload_modal']

  events:
    'submit form': -> UploadPage.vent.trigger 'upload:added', @model, event
    'click .btn-close' : -> UploadPage.vent.trigger 'upload:canceled', @model, event
    'change #upload-file': -> @loadProgress()

  initialize: ->
    _.bindAll(this, 'keyListener')
    $(document).bind('keydown', @keyListener)


  # this is all contrived--just a chance to show a little animation
  loadProgress: ->
    $('.progress').css("display", "inline")
    changeText = ->
      $('.progress-text').text("Loaded!")
      $('.spinner').css("transform", "none")

    setTimeout(changeText, 5000)



  keyListener: ->
    if event.keyCode == 27
      UploadPage.vent.trigger 'upload:canceled', @model, event
    else if event.keyCode == 13
      UploadPage.vent.trigger 'upload:added', @model, event

