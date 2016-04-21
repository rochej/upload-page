class UploadPage.Views.UploadsIndex extends Marionette.LayoutView

  template: JST['uploads/index']

  events:
    'submit #new_upload': 'createUpload'

  initialize: ->
    @collection.on('sync', @render, this)
    @collection.on('add', @appendUpload, this)

  render: ->
    $(@el).html(@template())
    @collection.each(@appendUpload)
    this

  appendUpload: (upload) ->
    view = new UploadPage.Views.UploadItem(model: upload)
    $('#uploads').append(view.render().el)


  createUpload: (e) ->
    e.preventDefault()
    attributes = filename: $('#new_filename').val()
    @collection.create attributes,
      wait: true
      success: ->
        $('#new_upload')[0].reset()
      error: ->
        @handleError

  handleError: (upload, response) ->
    if response.status = 422
      errors = $.parseJSON(response.responseText).errors
      for attribute, messages of errors
        alert "#{attribute} #{message}" for message in messages
