class UploadPage.Collections.Uploads extends Backbone.Collection
  model: UploadPage.Models.Upload
  initialize: ->
    @on 'create', ->
      UploadPage.vent.trigger 'sync:upload:item'

