# Bitter a Twitter Clone!

link: https://warm-beyond-56666.herokuapp.com/

This is a portfolio project to build a MVC (Model, View, Controller) CRUD (create, read, update, and delete) app. It is the first project
I have undertaken after completing the Makers tech bootcamp and I wanted to build something to showcase some
of the skills I've acquired!

I wanted to use the Ruby on Rails framework as ruby is a fun, user friendly langauge, optimsed for the programmer
and wanted to see how this was applied to the framework - I also wanted to practice some frontend styling
as I largely worked on the backend in our Makers projects.

It should function reasonably similar to twitter in that you can sign up, the email/username need to be unique and
password should be strong, then you'll need to login - which creates a new unique session for you and then you can leave
a tweet - the tweets are displayed with the newest first. You can also leave a comment/reply to any tweet - when you tweet
or reply your username and the time are displayed - there are also min and max lengths for tweet/reply content.

When you are not logged in you can view the list of tweets but cannot add to them, the sidebars are also dependant
on being logged in - the left has less options, the right switches the trends for you/who to follow blocks for signup/
login buttons. When you are logged in your username and a logout button is displayed on the bottom left of the main
page. Some of the features are dummy ones to bulk up the content - I didn't want to create all of twitter, although
someone might need to after Elon has finished playing around with it!

#### Techs

- Ruby 3.1.3
- Ruby on Rails 7
- sqlite3 1.4

#### How to do stuff

- Clone this repo and bundle install

- Start sever: bin/rails server or rails s

- How to run the test suite: bin/rails test
  (for individual tests add the path of the file to be tested eg bin/rails test test/models/user_test.rb)

- To start the console: rails console
