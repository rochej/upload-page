class UploadPage.Collections.Uploads extends Backbone.Collection
  model: UploadPage.Models.Upload
  initialize: ->
    @on 'sync', ->
      UploadPage.vent.trigger 'sync:upload:item'

