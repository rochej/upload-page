[Upload Page on Heroku](https://upload-page.herokuapp.com/)

# Tools:
* [Skeleton CSS](http://getskeleton.com/)
* [Konacha](https://github.com/jfirebaugh/konacha)
* [Moment.js](https://github.com/derekprior/momentjs-rails)
* [Backbone](http://backbonejs.org/)
* [Marionette](http://marionettejs.com/)
* Rails

# Resources:
* [Konacha setup](http://blog.contactually.com/2015/02/javascript-tdd-rails-4-konacha-3/)
* [Konacha setup](https://github.com/contactually/rails-4-konacha-todot)
* [Derek Bailey](https://lostechies.com/derickbailey/)
* [Backbone-Rails](http://www.backbonerails.com/)

# To Run:
* Fork repo
```
  bundle install
  rake db:create
  rake db:migrate
  rake db:seed // populates specified types
  rails server
```

# Notes:
* File upload feature is not functional--just grabs filename and populates to database.
* Tests:
  * I have written a few sample tests for the front-end portion.
  *If I had more time, I would only require the files specifically being tested.
  * In regards to back-end test, please see a [previous project](https://github.com/rochej/ModResume/tree/master/spec) to get a sense of the tests that I would include