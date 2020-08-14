# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# Mod4_event_project
Api::V1::Games
rails g model Api::V1::Event title:string start_datetime:datetime location:string
rails g model Api::V1::Users username:string password_digest:string session_token:string
rails g model Api::V1::Categories name:string
rails g model Api::V1::EventCategories category_id:integer :event_id:integer
rails g model Api::V1::Bookmarks user_id:integer event_id:integer
rails g model Api::V1::Tickets user_id:integer event_id:integer
