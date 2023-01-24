# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

- start sever: bin/rails server or rails s
- rails IRB in/rails console

- Ruby version

- System dependencies

- Configuration

- Database creation

- Database initialization

- How to run the test suite:
- for individual tests
- bin/rails test test/models/user_test.rb
- Run all tests bin/rails test

- Services (job queues, cache servers, search engines, etc.)

- Deployment instructions

- ...

# Bitter_twitter_clone

From makers tech
We are going to write a small Twitter clone that will allow the users to post messages to a public stream.

## Features:

#### STRAIGHT UP

As a Maker
So that I can let people know what I am doing
I want to post a message (peep) to chitter
(post msg to chitter)
As a maker
So that I can see what others are saying
I want to see all peeps in reverse chronological order
(View peeps in order)
As a Maker
So that I can better appreciate the context of a peep
I want to see the time at which it was made
(With time stamp)
As a Maker
So that I can post messages on Chitter as me
I want to sign up for Chitter
(Sign up - tokens)

#### HARDER

As a Maker
So that only I can post messages on Chitter as me
I want to log in to Chitter
(Login - tokens)
As a Maker
So that I can avoid others posting messages on Chitter as me
I want to log out of Chitter
(Singout tokens)

#### ADVANCED

As a Maker
So that I can stay constantly tapped in to the shouty box of Chitter
I want to receive an email if I am tagged in a Peep

### Technical Approach:

In the last two weeks, you integrated a database using the pg gem and Repository classes. You also implemented small web applications using Sinatra, RSpec, HTML and ERB views to make dynamic webpages. You can continue to use this approach when building Chitter Challenge.

You can refer to the guidance on Modelling and Planning a web application, to help you in planning the different web pages you will need to implement this challenge. If you'd like to deploy your app to Heroku so other people can use it, you can follow this guidance.

If you'd like more technical challenge now, try using an Object Relational Mapper as the database interface, instead of implementing your own Repository classes.

Some useful resources: Ruby Object Mapper

#### ROM

ActiveRecord

ActiveRecord ORM
Sinatra & ActiveRecord setup
Notes on functionality:
You don't have to be logged in to see the peeps.
Makers sign up to chitter with their email, password, name and a username (e.g. samm@makersacademy.com, password123, Sam Morgan, sjmog).
The username and email are unique.
Peeps (posts to chitter) have the name of the maker and their user handle.
Your README should indicate the technologies used, and give instructions on how to install and run the tests.

## Bonus:

If you have time you can implement the following:

In order to start a conversation as a maker I want to reply to a peep from another maker.

# Designs
=======


         Client access              Server

         pages user will see                             classes
     ┌─────────────────────────┐  ┌──────────────────────────────┐       ┌─────────────────────────┐
     │                         │  │                              │       │                         │
     │   home login page       │  │   Login /sign up page        │       │   Login model class     │     DB: Postgres SQl
     │                         │  │                              │       │                         │
     │   either sign up or     │  │  takes email as username     │       │                         │     ORM: Active record
     │                         │  │  and password(database)      │       │                         │
     │  sign in                │  │                              ├──────►│                         │     Users table
     │                         │  │  this is the home page       │       │                         │
     │  takes you to the peeps │  │  once logged in redirect to  │       │                         │     Posts table
     │ page                    │  │  peeps page                  │       │                         │
     │                         │  │                              │       │                         │
     │                         │  │                              │       │                         │
     └─────────────────────────┘  └──────────────┬───────────────┘       └─────────────────────────┘
                                                 │
      ┌────────────────────────┐  ┌──────────────▼───────────────┐      ┌──────────────────────────┐
      │  peeps page            │  │                              │      │     Peep model class     │
      │                        │  │  Peeps                       │      │                          │
      │  can post a peep, see  │  │                              │      │                          │
      │                        │  │                              │      │                          │
      │  a list of all peeps   │  │                              │      │                          │
      │                        │  │                              ├─────►│                          │
      │  has a logout button   │  │                              │      │                          │
      │                        |  |                              │      │                          │
      │ that takes you back to │  │                              │      │                          │
      │ login                  │  │                              │      │                          │
      └────────────────────────┘  └──────────────────────────────┘      └──────────────────────────┘
          View                              Controller                           Model

                                  ┌──────────────────────────────┐
                                  │  App  file                   │
                                  │                              │
                                  │ takes get and post requests  │
                                  │                              │
                                  │ controller                   │
                                  │                              │
                                  │                              │
                                  │                              │
                                  │                              │
                                  │                              │
                                  │                              │
                                  └──────────────────────────────┘

A user can have many tweets
A tweet can only have one user - tweet has user FK - can user this to look up user in db

A tweet can have many comments
A comment can only have one tweet - comment has tweet FK - can user this to look up user in db
