class UploadPage.Views.TypesLayout extends Marionette.LayoutView
  template: JST['uploads/types_layout']
  regions:
    header: '.header'
    body: '.body'

  onRender: ->
    typeView = new UploadPage.Views.TypeItem({model: @model})
    uploadsView = new UploadPage.Views.UploadList({collection: @model.collection})
    @showChildView('header', typeView)
    @showChildView('body', uploadsView)
    return