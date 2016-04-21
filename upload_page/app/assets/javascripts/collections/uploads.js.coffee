class UploadPage.Collections.Uploads extends Backbone.Collection
  url: '/api/uploads'

  model: UploadPage.Models.Upload
