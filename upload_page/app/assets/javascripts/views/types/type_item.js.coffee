# item_template = "<%= name %>
#                 <%= description %>
#                 <%= quantity %>
#                 <button class='btn-add'>Upload</button>"

class UploadPage.Views.TypeItem extends Marionette.ItemView
  tagName: 'div'
  template: JST['types/type_item']
  # template: (serialized_model) ->
  #   name = serialized_model.name
  #   description = serialized_model.description
  #   quantity = serialized_model.quantity
  #   _.template(item_template)
  #     name: name
  #     description: description
  #     quantity: quantity

  events:
    'click .btn-add': -> UploadPage.vent.trigger 'add:upload:item', @model

