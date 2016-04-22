class UploadPage.Views.TypesLayout extends Marionette.LayoutView
  template: JST['uploads/types_layout']
  regions:
    header: '.header'
    body: '.body'

  onRender: ->
    typeView = new UploadPage.Views.TypeItem({model: @model})
    debugger
    @model.uploads.fetch({reset: true})
    uploadsView = new UploadPage.Views.UploadList({collection: @model.uploads})
    @showChildView('header', typeView)
    @showChildView('body', uploadsView)
    return