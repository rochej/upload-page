class UploadPage.Views.TypesLayout extends Marionette.LayoutView
  template: JST['uploads/types_layout']
  regions:
    header: '.section-head'
    body: '.section-body'

  onRender: ->
    typeView = new UploadPage.Views.TypeItem({model: @model})
    @model.uploads.fetch({reset: true})
    uploadsView = new UploadPage.Views.UploadList({collection: @model.uploads})
    @showChildView('header', typeView)
    @showChildView('body', uploadsView)
    return

  onChildviewAddUploadItem: ->
    @model.uploads.create()
    upload = @model.uploads.last()
    UploadPage.vent.trigger 'add:upload:item', upload