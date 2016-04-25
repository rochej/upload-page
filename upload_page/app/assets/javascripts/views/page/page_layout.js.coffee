class UploadPage.Views.PageLayout extends Marionette.LayoutView
  template: JST['pages/page_layout']
  regions:
    alert: '.alert'
    list: '.list'

  events:
    # 'click .tab-nav': -> debugger
    'click .tab-nav': -> @toggleClass(event)

  toggleClass: (e)->
    $('.tab-nav-cell').removeClass("active")
    $(e.target).addClass("active")
    # console.log("toggleClass")


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