class UploadPage.Models.Upload extends Backbone.Model
  initialize: ->
    UploadPage.vent.trigger 'save:upload:item', this
