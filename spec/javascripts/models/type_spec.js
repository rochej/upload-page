//= require spec_helper
//= require application.js

describe('Type', function(){
  var subject;
  beforeEach(function(){
    UploadPage.initialize()
    subject = new UploadPage.Models.Type();
  });

  it('has nested uploads collection', function(){
    expect(subject.uploads).to.have.length(0)
  });
  it('nested uploads have url', function(){
    expect(subject.uploads.url).to.eq("/api/types/" + subject.id + "/uploads")
  });
});