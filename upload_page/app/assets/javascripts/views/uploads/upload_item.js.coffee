item_template= "<td><%= filename %></td>
                <td><%= status %></td>
                <td><%= created_at %></td>
                <td><button class='btn-del'>X</button>"

class UploadPage.Views.UploadItem extends Marionette.ItemView
  tagName: 'tr'
  template: (serialized_model) ->
    filename = serialized_model.filename
    status = if serialized_model.status then "Uploaded Successfully" else "Upload Failed"
    created_at = serialized_model.created_at
    _.template(item_template)
      filename: filename
      status: status
      created_at: created_at

  events:
    'click .btn-del': 'deleteUpload'

  modelEvents:
    'change': 'render'

  deleteUpload: ->
    @model.destroy()