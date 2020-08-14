# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all

User.create(username:"Daniel", password_digest:"password", session_token:"session")

10.times do 
    event = Event.create(title: Faker::Science.element, full_description:"hello", date: Faker::Date.in_date_period, price: 5.0, venue: Faker::Address.city)
  end
  