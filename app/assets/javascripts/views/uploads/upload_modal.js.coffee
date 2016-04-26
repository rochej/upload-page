class UploadPage.Views.UploadModal extends Marionette.ItemView
  tagname: 'div'
  template: JST['uploads/upload_modal']

  events:
    # 'click .btn-save': -> UploadPage.vent.trigger 'upload:added', @model
    # 'click .btn-save': -> @uploadFile
    'submit form': -> @uploadFile(event)


  uploadFile: (event) ->
    values = {}
    csrf_param = $('meta[name=csrf-param]').attr('content')
    csrf_token = $('meta[name=csrf-token]').attr('content')

    if event
      event.preventDefault()
    values['filename'] = $('#upload-file')[0].files[0].name

    values_with_csrf = _.extend({}, values)
    values_with_csrf[csrf_param] = csrf_token

    @model.uploads.create values,
      iframe: true
      files: @$('form :file')
      data: values_with_csrf
    return