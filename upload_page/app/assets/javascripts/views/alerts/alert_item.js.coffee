item_template = "hi<%= filename %>"

class UploadPage.Views.AlertItem extends Marionette.ItemView
  tagName: 'p'
  template: (serialized_model) ->
    filename = serialized_model.filename
    created_at = serialized_model.created_at
    _.template(item_template)
      filename: filename
      created_at: created_at