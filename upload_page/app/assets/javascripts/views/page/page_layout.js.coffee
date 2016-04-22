class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['uploads/page_layout']
  regions:
    alert: '.alert'
    form: '.form'
    list: '.list'

  collectionEvents:
    'change': 'render'

  onRender: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return