# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "Cleaning DB..."
Meeting.destroy_all
UserLanguage.destroy_all
Language.destroy_all
UserCategory.destroy_all
User.destroy_all
Category.destroy_all

puts "Creating users.."

User.create!(
  email:"pao@hotmail.com",
  password:123456,
  username:"pao",
  friend: false,
  origin: "Colombien",
  province: "armenia",
  address: "villa",
  latitude: 1.1,
  longitude: 222.0

)
User.create!(
  email:"friend@hotmail.com",
  password:123456,
  username:"Felipe",
  friend: true,
  origin: "Colombien",
  province: "armenia",
  address: "villa",
  latitude: 1.1,
  longitude: 222.0
)

languages = ["French", "English", "Spanish", "Mandarin", "Italian"]
languages.each do |language|
  Language.create!(name: language)
end

categories = ["Finance", "Real Estate", "Education", "Coding", "Employment"]
categories.each do |category|
  Category.create!(name: category)
end

puts "done"
