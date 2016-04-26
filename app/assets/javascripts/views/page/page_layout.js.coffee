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

  showTypesList: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return

  showMysteryView: ->
    mysteryView = new UploadPage.Views.MysteryItem()
    @showChildView('list', mysteryView)
    return

  events:
    'click .tab-nav': ->
      @toggleActive(event)
      @transitionViews(event)
      @clearAlert()


  toggleActive: (e)->
    $('.tab-nav-cell').removeClass("active")
    $(e.target).addClass("active")

  transitionViews: (e)->
    self = this
    $('.list').fadeOut("fast", ->
      if $(e.target).hasClass("uploads")
        self.showTypesList()
      else
        self.showMysteryView()
    )
    $('.list').fadeIn("fast")

  clearAlert: ->
    this.regionManager._regions.alert.empty()

  uploadSavedAlert: (upload)->
    alertView = new UploadPage.Views.AlertItem(model: upload)
    @showChildView('alert', alertView)
