//= require spec_helper
//= require application.js

describe('Page Layout View', function(){
  var subject, types;
  beforeEach(function(){
    UploadPage.initialize();
    types = new UploadPage.Collections.Types()
    types.fetch()
    subject = new UploadPage.Views.PageLayout({collection: types})
    SANDBOX.append(subject.render().el);
  })

  it('renders', function(){
    expect(SANDBOX.find('.page-head').text()).to.include("Supporting Documents")
  })
  // it('switches tabs on click', function(){
  //   subject.$('.submit-docs:first').trigger('click');
  //   expect($(SANDBOX.find('.submit-docs')).className()).to.include('active');
  // })
})