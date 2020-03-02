# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Neighbourhood.destroy_all

User.create(name:"Mercedes", email: "bluelions@gmail.com", password: "12345678", profile_picture: "https://images.unsplash.com/photo-1487412720507-e7ab37603c6f?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1651&q=80")

3.times do |i|
    user = User.create(name: "User #{i}", email: "mail#{i}@gmail.com", password: "12345678")
end

15.times do |i|
    neighbour = Neighbourhood.create(name: "Neighbour #{i}")
end

User.create(name:"El Admin", email: "admin@gmail.com", password: "12345678", admin: true)