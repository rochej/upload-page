//= require spec_helper
//= require application.js

describe('Types', function(){
  var subject;
  beforeEach(function(){
    UploadPage.initialize()
    subject = new UploadPage.Collections.Types();
  });

  it('has correct url', function(){
    expect(subject.url).to.eq('/api/types')
  });
  it('has model specified', function(){
    expect(subject.model.name).to.eq('Type')
  });
});