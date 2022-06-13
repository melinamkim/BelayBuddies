# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
# test
Review.destroy_all
Chatroom.destroy_all
User.destroy_all

file_1 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654702268/Belay_Buddies/melina1_ty8snm.jpg")
person1 = User.create!(email: "melina@gmail.com", password: "123456", first_name: "Melina", last_name: "Kim", gender: "female", level: "beginner", age: 28, location: "Canary Wharf, London", bouldering:true, sport_climbing:true)
person1.photo.attach(io: file_1, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_2 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654702055/Belay_Buddies/tassilo1_a6beqz.jpg")
person2 = User.create!(email: "tassilo@gmail.com", password: "123456", first_name: "Tassilo", last_name: "Brecht", gender: "male", level: "beginner", age: 18, location: "Camden, London", bouldering:true, trad_climbing:true)
person2.photo.attach(io: file_2, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_3 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654860938/Belay_Buddies/james1_qt2ito.jpg")
person3 = User.create!(email: "james@gmail.com", password: "123456", first_name: "James", last_name: "Hsia", gender: "male", level: "intermediate", age: 50, location: "Mayfair, London", sport_climbing:true, bouldering:true)
person3.photo.attach(io: file_3, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_4 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654701024/Belay_Buddies/Usman1_n7ncfu.jpg")
person4 = User.create!(email: "usman@gmail.com", password: "123456", first_name: "Usman", last_name: "Akram", gender: "male", level: "advanced", age: 35, location: "Paddington, London", top_roping:true, sport_climbing:true)
person4.photo.attach(io: file_4, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_5 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654858752/Belay_Buddies/Phelimnew_ow6d30.jpg")
person5 = User.create!(email: "phelim@gmail.com", password: "123456", first_name: "Phelim", last_name: "Dunleavy", gender: "male", level: "advanced", age: 28, location: "Hoxton, London", trad_climbing:true, sport_climbing:true)
person5.photo.attach(io: file_5, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_6 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654858715/Belay_Buddies/Louis1_xno18v.jpg")
person6 = User.create!(email: "louis@gmail.com", password: "123456", first_name: "Louis", last_name: "Leslie", gender: "male", level: "intermediate", age: 25, location: "Hoxton, London", top_roping:true, sport_climbing:true)
person6.photo.attach(io: file_6, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_7 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654866425/Belay_Buddies/BEN_gk3vhv.jpg")
person7 = User.create!(email: "ben@gmail.com", password: "123456", first_name: "Ben", last_name: "McLaren", gender: "male", level: "beginner", age: 60, location: "Chelsea, London", top_roping:true, sport_climbing:true)
person7.photo.attach(io: file_7, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_8 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654867552/Belay_Buddies/Giorgio_smpmqq.jpg")
person8 = User.create!(email: "Giorgio@gmail.com", password: "123456", first_name: "Giorgio", last_name: "Gristina", gender: "male", level: "advanced", age: 22, location: "Soho, London", bouldering:true, sport_climbing:true)
person8.photo.attach(io: file_8, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_9 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654868175/Belay_Buddies/Richard_xtfmlx.jpg")
person9 = User.create!(email: "richard@gmail.com", password: "123456", first_name: "Richard", last_name: "Phase", gender: "male", level: "Actually a skaterboy", age: 80, location: "Camden, London", top_roping:true, sport_climbing:true)
person9.photo.attach(io: file_9, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

Review.create!(description:"Advanced climber who will help you improve your bouldering technique.", rating: 5, user: person4, author: person1)

Review.create!(description:"He's too advanced for me..!", rating: 3, user: person4, author: person6)

Review.create!(description:"Can't climb well but friendly :)", rating: 5, user: person1, author: person4)

Review.create!(description:"Very strong clibmer for his age.", rating: 5, user: person3, author: person1)

Review.create!(description:"Fun to go climbing with!", rating: 5, user: person2, author: person1)

Review.create!(description:"Very Fast", rating: 2, user: person7, author: person6)
