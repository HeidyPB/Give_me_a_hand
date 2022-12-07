# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
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
  username:"pao",
  friend: true,
  origin: "Colombien",
  province: "armenia",
  address: "villa",
  latitude: 1.1,
  longitude: 222.0
)
