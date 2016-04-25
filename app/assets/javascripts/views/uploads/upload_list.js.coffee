class UploadPage.Views.UploadList extends Marionette.CompositeView
  tagName: 'table'
  template: JST['uploads/upload_list']
  childView: UploadPage.Views.UploadItem