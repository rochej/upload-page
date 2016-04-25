class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['pages/page_layout']
  regions:
    alert: '.alert'
    list: '.list'

  initialize: ->
    self = this
    UploadPage.vent.on 'upload:saved', (upload) ->
      self.uploadSavedAlert(upload)

  onRender: ->
    @showTypesList()
    # @showMysteryView()

  showTypesList: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return

  showMysteryView: ->
    mysteryView = new UploadPage.Views.MysteryItem()
    @showChildView('list', mysteryView)
    return

  events:
    'click .tab-nav': -> @toggleActive(event)

  toggleActive: (e)->
    $('.tab-nav-cell').removeClass("active")
    $(e.target).addClass("active")
    if $(e.target).hasClass("uploads")
      @showTypesList()
    else
      @showMysteryView()



  uploadSavedAlert: (upload)->
    alertView = new UploadPage.Views.AlertItem(model: upload)
    @showChildView('alert', alertView)
