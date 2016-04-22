class UploadPage.Collections.Uploads extends Backbone.Collection
  url: '/api/types/1/uploads'

  model: UploadPage.Models.Upload
