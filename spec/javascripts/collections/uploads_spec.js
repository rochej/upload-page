//= require spec_helper
//= require application.js

describe('Types', function(){
  var subject;
  beforeEach(function(){
    UploadPage.initialize()
    subject = new UploadPage.Collections.Uploads();
  });

  it('has model specified', function(){
    expect(subject.model.name).to.eq('Upload')
  });
});