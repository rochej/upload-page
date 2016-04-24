class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['pages/page_layout']
  regions:
    alert: '.alert'
    list: '.list'

  initialize: ->
    self = this
    UploadPage.vent.on 'upload:saved', (upload) ->
      self.uploadSavedAlert(upload)

  uploadSavedAlert: (upload)->
    alertView = new UploadPage.Views.AlertItem(model: upload)
    @showChildView('alert', alertView)

  onRender: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return