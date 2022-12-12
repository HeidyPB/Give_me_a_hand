# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning DB..."
Meeting.destroy_all
Review.destroy_all
UserSpokenLanguage.destroy_all
SpokenLanguage.destroy_all
UserCategory.destroy_all
Message.destroy_all
Chatroom.destroy_all
User.destroy_all
Category.destroy_all

puts "Creating users.."

User.create!(
  email:"heidy@hotmail.com",
  password: 123456,
  username: "Heidy24",
  firstname: "Heidy",
  lastname: "Moralez",
  friend: false,
  origin: "Colombienne",
  province: "Cartagena",
  address: "Chateau De Saint Felipe",
  latitude: 1.1,
  longitude: 111.0
)

User.create!(
  email: "estuardo@hotmail.com",
  password: 123456,
  username: "Stuart",
  firstname: "Estuardo",
  lastname: "Reyes",
  friend: true,
  origin: "Canadien",
  province: "Quebec",
  address: "Montegerie",
  latitude: 1.1,
  longitude: 222.0
)

User.create!(
  email:"paula@hotmail.com",
  password: 123456,
  username: "MissPaula",
  firstname: "paula",
  lastname: "benavides",
  friend: true,
  origin: "Colombiene",
  province: "Quebec",
  address: "ile de soeurs",
  latitude: 1.1,
  longitude: 111.0
)

User.create!(
  email: "felipe@hotmail.com",
  password: 123456,
  username: "Pipe",
  firstname: "Felipe",
  lastname: "Benavides",
  friend: true,
  origin: "Colombien",
  province: "Ontario",
  address: "Niagara",
  latitude: 3.1,
  longitude: 333.0
)

User.create!(
  email: "andres@hotmail.com",
  password: 123456,
  username: "AndreBoy",
  firstname: "Andres",
  lastname: "Sanchez",
  friend: true,
  origin: "Mexicain",
  province: "British Columbia",
  address: "Vancouver",
  latitude: 4.1,
  longitude: 444.0
)

User.create!(
  email: "sebastian@hotmail.com",
  password: 123456,
  username: "Seb",
  firstname: "Sebastien",
  lastname: "Morin",
  friend: true,
  origin: "France",
  province: "saskatchewan",
  address: "Down town",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "Hamza@hotmail.com",
  password: 123456,
  username: "Hami",
  firstname: "Hamza",
  lastname: "Ali",
  friend: true,
  origin: "Indie",
  province: "Alberta",
  address: "Edmonton",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "etienne@hotmail.com",
  password: 123456,
  username: "Eti1996",
  firstname: "Etienne",
  lastname: "Bolduc",
  friend: true,
  origin: "Usa",
  province: "Toronto",
  address: "Down town",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "gaitan@hotmail.com",
  password: 123456,
  username: "Gaetan1960",
  firstname: "Gaetan",
  lastname: "Vaillancourt",
  friend: true,
  origin: "Manitoba",
  province: "Winnipeg",
  address: "Grant park",
  latitude: 5.1,
  longitude: 555.0
)

languages = ["French", "English", "Spanish", "Mandarin", "Italian"]
languages.each do |language|
  SpokenLanguage.create!(name: language)
end

categories = ["Finance", "Real Estate", "Education", "Coding", "Employment"]
categories.each do |category|
  Category.create!(name: category)
end

puts "done"
