# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Destroy
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

# Spoken languages object creation
languages = {
  "french" => nil,
  "english" => nil,
  "spanish" => nil,
  "mandarin" => nil,
  "italian" => nil
}

languages.each do |key, _|
  languages[key] = SpokenLanguage.create!(name: key)
end

puts "Creating languages.."


# Categories object creation
categories = {
  "finance" => nil,
  "real estate" => nil,
  "education" => nil,
  "employment" => nil,
  "coding" => nil
}

categories.each do |key, _|
  categories[key] = Category.create!(name: key)
end

puts "Creating categories.."

# Seeding users
users = [
  {
    properties: {
      email: "heidy@hotmail.com",
      password: "123456",
      username: "Heidy24",
      firstname: "Heidy",
      lastname: "morales",
      friend: false,
      origin: "colombia",
      country: "canada",
      province: "cartagena",
      address: "chateau De Saint Felipe",
      about_me: "i need someone to help me in my immigration process",
      latitude: 0.1,
      longitude: 10.01
    },
    languages: ["spanish", "english", "french"],
    categories: ["education"],
    # photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670952721/development/k3286xws4wthn7l510omuoa7x5hc.jpg"
  },

  {
    properties: {
      email: "estuardo@hotmail.com",
      password: '123456',
      username: "stuart",
      firstname: "estuardo",
      lastname: "reyes",
      friend: true,
      origin: "canada",
      country: "canada",
      province: "quebec",
      address: "montegerie",
      about_me: "i am a senior web developer, I can help you in your process of arrival in the city",
      latitude: 1.1,
      longitude: 111.0
    },
    languages: ["spanish", "english", "french"],
    categories: ["education", "coding"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/39506332_zzwdlo.png"
  },

  {
    properties: {
      email: "paula@hotmail.com",
      password: "123456",
      username: "paula",
      firstname: "paula",
      lastname: "rosero",
      friend: true,
      origin: "colombia",
      country: "canada",
      province: "quebec",
      address: "ile de soeurs",
      about_me: "i work in the area of education, I can guide you on how to start your language classes",
      latitude: 2.1,
      longitude: 222.0
    },
    languages: ["spanish"],
    categories: ["education", "employment"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/114954584_mxv5os.jpg"
  },

  {
    properties: {
      email: "felipe@hotmail.com",
      password: "123456",
      username: "felipe86",
      firstname: "felipe",
      lastname: "acevedo",
      friend: true,
      origin: "colombie",
      country: "canada",
      province: "ontario",
      address: "toronto",
      about_me: "i can help you open your bank account and insurance in general",
      latitude: 3.1,
      longitude: 333.0
    },
    languages: ["english"],
    categories: ["finance"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/114954282_v4dgs3.jpg"
  },

  {
    properties: {
      email: "alfonso@hotmail.com",
      password: "123456",
      username: "chaparro",
      firstname: "chaparro",
      lastname: "guacheneger",
      friend: true,
      origin: "mexico",
      country: "Canada",
      province: "alberta",
      address: "Edmonton",
      about_me: "I can help you rent an apartment at a good price",
      latitude: 4.1,
      longitude: 444.0
    },
    languages: ["english","italian"],
    categories: ["real estate"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865814/give%20me%20a%20hand/guacheneguer_naq1zn.jpg"
  },

  {
    properties: {
      email: "cedric@hotmail.com",
      password: "123456",
      username: "cryptocedric",
      firstname: "cedric",
      lastname: "lavoie",
      friend: true,
      origin: "canada",
      country: "Canada",
      province: "british columbia",
      address: "vancouber",
      about_me: "great experience with cryptos i can teach you how to invest smartly",
      latitude: 5.1,
      longitude: 555.0
    },
    languages: ["english"],
    categories: ["finance"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865429/give%20me%20a%20hand/arrnwrr44ebfchecoh2y_tsawhg.jpg"
  },

  {
    properties: {
      email: "johan@hotmail.com",
      password: "123456",
      username: "johanspeak",
      firstname: "johan",
      lastname: "mirland",
      friend: true,
      origin: "france",
      country: "Canada",
      province: "nova scotia",
      address: "halifax",
      about_me: "specialist in communication and oratory, I can help you in everything you need",
      latitude: 6.1,
      longitude: 666.0
    },
    languages: ["english","french"],
    categories: ["finance"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/115640865_p9509u.png"
  },

  {
    properties: {
      email: "marc@hotmail.com",
      password: "123456",
      username: "marc85",
      firstname: "marc andre",
      lastname: "camirand",
      friend: true,
      origin: "Canada",
      country: "Canada",
      province: "new brunswick",
      address: "fredericton",
      about_me: "Boat specialist, I can help you find a job",
      latitude: 7.1,
      longitude: 777.0
    },
    languages: ["english"],
    categories: ["finance"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/40340046_ihd3u0.jpg"
  },

  {
    properties: {
      email: "marjorie@hotmail.com",
      password: "123456",
      username: "marjorie",
      firstname: "marjorie",
      lastname: "mondon",
      friend: true,
      origin: "france",
      country: "Canada",
      province: "manitoba",
      address: "winnipeg",
      about_me: "owner of a restaurant chain I can hire you and help rent an apartment nearby",
      latitude: 8.1,
      longitude: 888.0
    },
    languages: ["english", "french"],
    categories: ["real estate"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670949764/give%20me%20a%20hand/marjorie_k5zloa.jpg"
  },

  {
    properties: {
      email: "karl@hotmail.com",
      password: "123456",
      username: "codingkarl",
      firstname: "karl",
      lastname: "hedayati",
      friend: true,
      origin: "canada",
      country: "Canada",
      province: "saskatchewan",
      address: "regina",
      about_me: "programming specialist, I will accompany you in your paperwork when you arrive",
      latitude: 9.1,
      longitude: 9.0
    },
    languages: ["english","french"],
    categories: ["coding"],
    photo: "https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/114943045_hiumnu.jpg"
  }
]

users.each do |user|
  user_instance = User.create(user[:properties])

  user[:languages].each do |language|
    UserSpokenLanguage.create!(
      user: user_instance,
      spoken_language: languages[language]
    )
  end

  user[:categories].each do |category|
    UserCategory.create!(
      user: user_instance,
      category: categories[category]
    )
  end

  if user[:photo]
    io = URI.open(user[:photo])
    user_instance.photo.attach(io: io, filename: "nes.png", content_type: "image/png")
  end
end

puts "Creating users.."

# User.create!(
#   email:"heidy@hotmail.com",
#   password: 123456,
#   username: "Heidy24",
#   firstname: "Heidy",
#   lastname: "Moralez",
#   friend: false,
#   origin: "Colombienne",
#   province: "Cartagena",
#   address: "Chateau De Saint Felipe",
#   latitude: 1.1,
#   longitude: 111.0

# )

# User.create!(
#   email: "estuardo@hotmail.com",
#   password: 123456,
#   username: "Stuart",
#   firstname: "Estuardo",
#   lastname: "Reyes",
#   friend: true,
#   origin: "Canadien",
#   province: "Quebec",
#   address: "Montegerie",
#   latitude: 1.1,
#   longitude: 222.0
# )

# User.create!(
#   email:"paula@hotmail.com",
#   password: 123456,
#   username: "MissPaula",
#   firstname: "paula",
#   lastname: "benavides",
#   friend: true,
#   origin: "Colombiene",
#   province: "Quebec",
#   address: "ile de soeurs",
#   latitude: 1.1,
#   longitude: 111.0
# )

# User.create!(
#   email: "felipe@hotmail.com",
#   password: 123456,
#   username: "Pipe",
#   firstname: "Felipe",
#   lastname: "Benavides",
#   friend: true,
#   origin: "Colombien",
#   province: "Ontario",
#   address: "Niagara",
#   latitude: 3.1,
#   longitude: 333.0
# )

# User.create!(
#   email: "andres@hotmail.com",
#   password: 123456,
#   username: "AndreBoy",
#   firstname: "Andres",
#   lastname: "Sanchez",
#   friend: true,
#   origin: "Mexicain",
#   province: "British Columbia",
#   address: "Vancouver",
#   latitude: 4.1,
#   longitude: 444.0
# )

# User.create!(
#   email: "sebastian@hotmail.com",
#   password: 123456,
#   username: "Seb",
#   firstname: "Sebastien",
#   lastname: "Morin",
#   friend: true,
#   origin: "France",
#   province: "saskatchewan",
#   address: "Down town",
#   latitude: 5.1,
#   longitude: 555.0
# )

# User.create!(
#   email: "Hamza@hotmail.com",
#   password: 123456,
#   username: "Hami",
#   firstname: "Hamza",
#   lastname: "Ali",
#   friend: true,
#   origin: "Indie",
#   province: "Alberta",
#   address: "Edmonton",
#   latitude: 5.1,
#   longitude: 555.0
# )

# User.create!(
#   email: "etienne@hotmail.com",
#   password: 123456,
#   username: "Eti1996",
#   firstname: "Etienne",
#   lastname: "Bolduc",
#   friend: true,
#   origin: "Usa",
#   province: "Toronto",
#   address: "Down town",
#   latitude: 5.1,
#   longitude: 555.0
# )

# User.create!(
#   email: "gaitan@hotmail.com",
#   password: 123456,
#   username: "Gaetan1960",
#   firstname: "Gaetan",
#   lastname: "Vaillancourt",
#   friend: true,
#   origin: "Manitoba",
#   province: "Winnipeg",
#   address: "Grant park",
#   latitude: 5.1,
#   longitude: 555.0
# )

# puts "done"
# user_0 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670866144/give%20me%20a%20hand/113928215_yytfbf.jpg")
# users[0].photo.attach(io: user_0, filename: "nes.png", content_type: "image/png")

# user_1 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/39506332_zzwdlo.png")
# users[1].photo.attach(io: user_1, filename: "nes.png", content_type: "image/png")

# user_2 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/114954584_mxv5os.jpg")
# users[2].photo.attach(io: user_2, filename: "nes.png", content_type: "image/png")

# user_3 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/114954282_v4dgs3.jpg")
# users[3].photo.attach(io: user_3, filename: "nes.png", content_type: "image/png")

# user_4 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865814/give%20me%20a%20hand/guacheneguer_naq1zn.jpg")
# users[4].photo.attach(io: user_4, filename: "nes.png", content_type: "image/png")

# user_5 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865429/give%20me%20a%20hand/arrnwrr44ebfchecoh2y_tsawhg.jpg")
# users[5].photo.attach(io: user_5, filename: "nes.png", content_type: "image/png")

# user_6 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/115640865_p9509u.png")
# users[6].photo.attach(io: user_6, filename: "nes.png", content_type: "image/png")

# user_7 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/40340046_ihd3u0.jpg")
# users[7].photo.attach(io: user_7, filename: "nes.png", content_type: "image/png")

# user_8 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670949764/give%20me%20a%20hand/marjorie_k5zloa.jpg")
# users[8].photo.attach(io: user_8, filename: "nes.png", content_type: "image/png")

# user_9 = URI.open("https://res.cloudinary.com/ddwnnuqij/image/upload/v1670865428/give%20me%20a%20hand/114943045_hiumnu.jpg")
# users[9].photo.attach(io: user_9, filename: "nes.png", content_type: "image/png")
