# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

User.destroy_all

file_1 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654702268/Belay_Buddies/melina1_ty8snm.jpg")
person1 = User.create!(email: "melina@gmail.com", password: "123456", first_name: "Melina", last_name: "Kim", gender: "female", level: "beginner", age: 28, location: "Canary Wharf, London", indoor_bouldering:true, indoor_sport_climbing:true)
person1.photo.attach(io: file_1, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_2 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654702055/Belay_Buddies/tassilo1_a6beqz.jpg")
person2 = User.create!(email: "tassilo@gmail.com", password: "123456", first_name: "Tassilo", last_name: "Brecht", gender: "male", level: "beginner", age: 18, location: "Camden, London", indoor_bouldering:true)
person2.photo.attach(io: file_2, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_3 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654702458/Belay_Buddies/tentfor_2_aclfve.jpg")
person3 = User.create!(email: "james@gmail.com", password: "123456", first_name: "James", last_name: "Hsia", gender: "male", level: "intermediate", age: 50, location: "Finchley, London", outdoor_sport_climbing:true)
person3.photo.attach(io: file_3, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_4 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654701024/Belay_Buddies/Usman1_n7ncfu.jpg")
person4 = User.create!(email: "usman@gmail.com", password: "123456", first_name: "Usman", last_name: "Akram", gender: "male", level: "advanced", age: 35, location: "Dallston, London", indoor_bouldering:true, indoor_top_roping:true, outdoor_sport_climbing:true)
person4.photo.attach(io: file_4, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_4 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654702597/Belay_Buddies/phelim1_nbbta9.png")
person4 = User.create!(email: "phelim@gmail.com", password: "123456", first_name: "Phelim", last_name: "Dunleavy", gender: "male", level: "advanced", age: 28, location: "Hoxton, London", outdoor_trad_climbing:true, outdoor_sport_climbing:true)
person4.photo.attach(io: file_4, filename:"nes.png", content_type: "image/png")
p "new user created"

file_5 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654704515/Belay_Buddies/Louis_rmm3mf.png")
person5 = User.create!(email: "louis@gmail.com", password: "123456", first_name: "Louis", last_name: "Leslie", gender: "male", level: "advanced intermediate", age: 25, location: "Hoxton, London", indoor_top_roping:true, outdoor_sport_climbing:true)
person5.photo.attach(io: file_5, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"
