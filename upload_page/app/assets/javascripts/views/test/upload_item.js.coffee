item_template= "<%= filename %> </div>"

class UploadPage.Views.UploadItem extends Marionette.ItemView
  tagName: 'tr'
  # template: JST['uploads/upload_item']
  template: (serialized_model) ->
    filename = serialized_model.filename
    _.template(item_template)
      filename: filename