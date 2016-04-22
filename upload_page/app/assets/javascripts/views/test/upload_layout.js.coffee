class UploadPage.Views.UploadLayout extends Marionette.LayoutView
  template: JST['uploads/layout2']
  regions:
    alert: '.alert'
    form: '.form'
    list: '.list'

  collectionEvents:
    'change': 'render'

  onRender: ->
    listView = new UploadPage.Views.UploadList({collection: @collection})
    @showChildView('list', listView)
    return

