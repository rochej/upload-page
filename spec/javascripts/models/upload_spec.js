//= require spec_helper
//= require models/upload

describe('Upload', function(){
  var subject;
  beforeEach(function(){
    subject = new Upload();
  });

  it('has the correct defaults', function(){
    expect(subject.get('filename').to.eq(''))
  });
});