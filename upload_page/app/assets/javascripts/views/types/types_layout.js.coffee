class UploadPage.Views.TypesLayout extends Marionette.LayoutView
  template: JST['types/types_layout']
  regions:
    header: '.section-head'
    body: '.section-body'
  initialize: ->
    _.bindAll(this, "renderUploads")

  onRender: ->
    typeView = new UploadPage.Views.TypeItem({model: @model})
    @showChildView('header', typeView)
    @model.uploads.fetch
      reset: true
      success: this.renderUploads
    return

  renderUploads: ->
    uploadsView = new UploadPage.Views.UploadList({collection: @model.uploads})
    @showChildView('body', uploadsView)


  # onChildviewAddUploadItem: ->
    # console.log(event)
    # @model.uploads.create
    # upload = @model.uploads.last()
    # UploadPage.vent.trigger 'add:upload:item', upload