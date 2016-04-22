class UploadPage.Models.Type extends Backbone.Model
  initialize: ->
    @uploads = new UploadPage.Collections.Uploads
    @uploads.url = "/api/types/" + this.id + "/uploads"
    @uploads.on("reset", this.updateCounts)