class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['uploads/page_layout']
  regions:
    alert: '.alert'
    form: '.form'
    list: '.list'

  initialize: ->
    debugger
    @listenTo UploadPage.vent, 'some:event', @uploadSaved


  uploadSaved:->
    console.log("page layout sees add")

  onRender: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return