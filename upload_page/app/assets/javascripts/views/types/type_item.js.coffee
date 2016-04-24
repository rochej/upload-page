item_template = "<%= name %>
                <%= description %>
                <%= quantity %>
                <button class='btn-add'>Upload</button>"

class UploadPage.Views.TypeItem extends Marionette.ItemView
  tagName: 'tr'
  template: (serialized_model) ->
    name = serialized_model.name
    description = serialized_model.description
    quantity = serialized_model.quantity
    _.template(item_template)
      name: name
      description: description
      quantity: quantity

  triggers:
    'click .btn-add': 'add:upload:item'


