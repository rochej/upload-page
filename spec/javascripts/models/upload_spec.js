//= require spec_helper
//= require application.js

describe('Upload', function(){
  var subject;
  beforeEach(function(){
    UploadPage.initialize()
    subject = new UploadPage.Models.Upload();
  });

  it('has the correct defaults', function(){
    expect(subject.get('filename').to.eq(''))
  });
});