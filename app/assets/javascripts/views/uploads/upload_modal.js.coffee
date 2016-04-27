class UploadPage.Views.UploadModal extends Marionette.ItemView
  tagname: 'div'
  template: JST['uploads/upload_modal']

  initialize: ->
    _.bindAll(this, 'keyListener')
    $(document).bind('keydown', @keyListener)

  # this is all contrived--just a chance to show a little animation
  loadProgress: ->
    $('.progress').fadeIn("fast")
    fadeText = ->
      $('.spinner').animate({opacity: 0}, "fast")
      $('.progress').fadeOut("fast", ->
        $('.progress-text').text("Loaded!")
        $('.progress').fadeIn("fast")
        $('.btn-save').focus()
      )
    setTimeout(fadeText, 5000)



  events:
    'submit form': -> UploadPage.vent.trigger 'upload:added', @model, event
    'click .btn-close' : -> UploadPage.vent.trigger 'upload:canceled', @model, event

  keyListener: ->
    if event.keyCode == 27
      UploadPage.vent.trigger 'upload:canceled', @model, event
    else if event.keyCode == 13
      UploadPage.vent.trigger 'upload:added', @model, event

