class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['uploads/page_layout']
  regions:
    alert: '.alert'
    list: '.list'

  initialize: ->
    # @listenTo UploadPage.vent 'add:upload:item' @uploadSaved
    self = this
    UploadPage.vent.on 'add:upload:item', (upload) ->
      self.uploadSaved(upload)

  uploadSaved: (upload) ->
    # other_upload = @collection.last()
    alertView = new UploadPage.Views.AlertItem({model: upload})
    @showChildView('alert', alertView)

  onRender: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return