# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User.create!(
  email: "heidy@hotmail.com",
  password: 123456,
  username: "Heidy",
  friend: false,
  origin: "Colombiene",
  province: "Cartagena",
  address: "Chateau De Saint Felipe",
  latitude: 1.1,
  longitude: 111.0
)

User.create!(
  email: "pao@hotmail.com",
  password: 123456,
  username: "Pao",
  friend: false,
  origin: "Colombiene",
  province: "Armenia",
  address: "Ville Caroline",
  latitude: 2.1,
  longitude: 222.0
)
User.create!(
  email: "felipe@hotmail.com",
  password: 123456,
  username: "Felipe",
  friend: false,
  origin: "Colombien",
  province: "Santa Marta",
  address: "El Rodadero",
  latitude: 3.1,
  longitude: 333.0
)

User.create!(
  email: "andres@hotmail.com",
  password: 123456,
  username: "Andres",
  friend: false,
  origin: "Colombien",
  province: "Medellin",
  address: "El poblado",
  latitude: 4.1,
  longitude: 444.0
)

User.create!(
  email: "sebastian@hotmail.com",
  password: 123456,
  username: "Sebastian",
  friend: false,
  origin: "Colombien",
  province: "Bogota",
  address: "Centro",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "sebastian@hotmail.com",
  password: 123456,
  username: "Sebastian",
  friend: false,
  origin: "Colombien",
  province: "Bogota",
  address: "Centro",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "estuardo@hotmail.com",
  password: 123456,
  username: "Estuardo",
  friend: true,
  origin: "Candien",
  province: "Quebec",
  address: "Montegeri",
  latitude: 6.1,
  longitude: 666.0
)

User.create!(
  email: "etienne@hotmail.com",
  password: 123456,
  username: "Etienne",
  friend: true,
  origin: "canadien",
  province: "Toronto",
  address: "Centro",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "sebastian@hotmail.com",
  password: 123456,
  username: "Sebastian",
  friend: true,
  origin: "Colombien",
  province: "Bogota",
  address: "Centro",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "sebastian@hotmail.com",
  password: 123456,
  username: "Sebastian",
  friend: true,
  origin: "Colombien",
  province: "Bogota",
  address: "Centro",
  latitude: 5.1,
  longitude: 555.0
)

User.create!(
  email: "sebastian@hotmail.com",
  password: 123456,
  username: "Sebastian",
  friend: true,
  origin: "Colombien",
  province: "Bogota",
  address: "Centro",
  latitude: 5.1,
  longitude: 555.0
)
