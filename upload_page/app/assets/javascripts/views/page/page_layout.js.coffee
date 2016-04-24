class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['uploads/page_layout']
  regions:
    alert: '.alert'
    list: '.list'

  initialize: ->
    UploadPage.vent.on 'sync:upload:item', @testSync
    # @collection.on('sync', this.render, this)
    # @listenTo UploadPage.vent, 'add:upload:item', @uploadSaved
    self = this
    # UploadPage.vent.on 'add:upload:item', (upload) ->
    #   self.uploadSaved(upload)
    UploadPage.vent.on 'save:upload:item', (upload) ->
      self.uploadSavedAlert(upload)

  testSync: ->
    console.log("page sees sync")

  uploadSavedAlert: (upload)->
    # other_upload = @collection.last()
    alertView = new UploadPage.Views.AlertItem(model: upload)
    @showChildView('alert', alertView)

  onRender: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return