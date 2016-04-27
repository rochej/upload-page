class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['pages/page_layout']
  regions:
    alert: '.alert'
    modal: '.modal'
    list: '.list'

  events:
    'click .tab-nav': ->
      @toggleActive(event)
      @transitionViews(event)
      @clearAlert()

  initialize: ->
    self = this
    UploadPage.vent.on 'upload:initiated', (type) -> self.showModalView(type)
    UploadPage.vent.on 'upload:saved', (upload) ->
      self.clearModal()
      self.uploadSavedAlert(upload)
    UploadPage.vent.on 'upload:canceled', (upload) ->
      self.clearModal()

  onRender: ->
    @showTypesList()

  showModalView: (type)->
    modalView = new UploadPage.Views.UploadModal(model: type)
    @showChildView('modal', modalView)
    $('.overlay, .modal-style').fadeIn("fast")
    return

  showTypesList: ->
    listView = new UploadPage.Views.TypesList({collection: @collection})
    @showChildView('list', listView)
    return

  showMysteryView: ->
    mysteryView = new UploadPage.Views.MysteryItem()
    @showChildView('list', mysteryView)
    return

  toggleActive: (e)->
    $('.tab-nav-cell').removeClass("active")
    $(e.target).addClass("active")

  # in a larger app, add class-wide method to fade views https://github.com/marionettejs/backbone.marionette/issues/320
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
    @regionManager._regions.alert.empty()

  clearModal: ->
    self = this
    $('.overlay, .modal-style').fadeOut("fast", ->
      self.regionManager._regions.modal.empty()
    )


  uploadSavedAlert: (upload)->
    alertView = new UploadPage.Views.AlertItem(model: upload)
    @showChildView('alert', alertView)
