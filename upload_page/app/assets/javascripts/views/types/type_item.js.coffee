class UploadPage.Views.TypeItem extends Marionette.ItemView
  tagName: 'div'
  template: JST['types/type_item']

  events:
    'click .btn-add': -> UploadPage.vent.trigger 'add:upload:item', @model

