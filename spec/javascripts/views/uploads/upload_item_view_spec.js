//= require spec_helper
//= require application.js

describe('Upload Item View', function(){
  var subject, upload;
  beforeEach(function(){
    UploadPage.initialize();
    upload = new UploadPage.Models.Upload({filename: "photo.jpg"});
    subject = new UploadPage.Views.UploadItem({model: upload});
    SANDBOX.append(subject.render().el);
  });

  it('renders with correct filename', function(){
    expect($(SANDBOX.find('td')[0]).text()).to.include(" " + upload.get('filename'));
  });
  // it('on "X" click', function(){
  //   subject.$('.btn-del').trigger('click');
  //   expect(subject.model.hasChanged).to.eq(true)
  // })
})