# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'
# test
Message.destroy_all
Chatroom.destroy_all
Review.destroy_all
User.destroy_all

file_1 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655285884/Belay_Buddies/IMG_8926_xctpz1.jpg")
person1 = User.create!(email: "melina@gmail.com", password: "123456", first_name: "Melina", last_name: "Kim", gender: "female", level: "beginner", age: 28, location: "Canary Wharf, London", bouldering:true, sport_climbing:true)
person1.photo.attach(io: file_1, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_2 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655297681/Belay_Buddies/tas_wf1vnq.jpg")
person2 = User.create!(email: "tassilo@gmail.com", password: "123456", first_name: "Tassilo", last_name: "Brecht", gender: "male", level: "beginner", age: 18, location: "Camden, London", bouldering:true, trad_climbing:true)
person2.photo.attach(io: file_2, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_3 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655198063/Belay_Buddies/46712861_10156053283633505_2971007338829316096_n_uqgpwd.jpg")
person3 = User.create!(email: "james@gmail.com", password: "123456", first_name: "James", last_name: "Hsia", gender: "male", level: "intermediate", age: 39, location: "Suzhou, China", top_roping:true, bouldering:true)
person3.photo.attach(io: file_3, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_12 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655197594/Belay_Buddies/miho11_qh5qtz.jpg")
person12 = User.create!(email: "miho@gmail.com", password: "123456", first_name: "Miho", last_name: "Nonaka", gender: "female", level: "Advanced", age: 21, location: "Tokyo, Japan", sport_climbing:true, bouldering:true)
person12.photo.attach(io: file_12, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_4 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654701024/Belay_Buddies/Usman1_n7ncfu.jpg")
person4 = User.create!(email: "usman@gmail.com", password: "123456", first_name: "Usman", last_name: "Akram", gender: "male", level: "advanced", age: 36, location: "Paddington, London", bouldering:true, sport_climbing:true)
person4.photo.attach(io: file_4, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_5 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654858752/Belay_Buddies/Phelimnew_ow6d30.jpg")
person5 = User.create!(email: "phelim@gmail.com", password: "123456", first_name: "Phelim", last_name: "Dunleavy", gender: "male", level: "advanced", age: 28, location: "Cockfosters, London", trad_climbing:true, sport_climbing:true)
person5.photo.attach(io: file_5, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_6 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654858715/Belay_Buddies/Louis1_xno18v.jpg")
person6 = User.create!(email: "louis@gmail.com", password: "123456", first_name: "Louis", last_name: "Leslie", gender: "male", level: "intermediate", age: 25, location: "Hoxton, London", top_roping:true, sport_climbing:true)
person6.photo.attach(io: file_6, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_10 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655197447/Belay_Buddies/shauna11_hplau5.jpg")
person10 = User.create!(email: "shauna@gmail.com", password: "123456", first_name: "Shauna", last_name: "Coxsey", gender: "female", level: "advanced", age: 27, location: "Sheffield, England", bouldering:true, sport_climbing:true)
person10.photo.attach(io: file_10, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_7 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654866425/Belay_Buddies/BEN_gk3vhv.jpg")
person7 = User.create!(email: "ben@gmail.com", password: "123456", first_name: "Ben", last_name: "McLaren", gender: "male", level: "beginner", age: 22, location: "Chelsea, London", top_roping:true, sport_climbing:true)
person7.photo.attach(io: file_7, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_11 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655197847/Belay_Buddies/ashima11_cchgra.jpg")
person11 = User.create!(email: "ashima@gmail.com", password: "123456", first_name: "Ashima", last_name: "Shiraishi", gender: "female", level: "advanced", age: 21, location: "Tokyo, Japan", bouldering:true, sport_climbing:true)
person11.photo.attach(io: file_11, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_8 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654867552/Belay_Buddies/Giorgio_smpmqq.jpg")
person8 = User.create!(email: "Giorgio@gmail.com", password: "123456", first_name: "Giorgio", last_name: "Gristina", gender: "male", level: "advanced", age: 22, location: "Soho, London", bouldering:true, top_roping:true)
person8.photo.attach(io: file_8, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_9 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1654868175/Belay_Buddies/Richard_xtfmlx.jpg")
person9 = User.create!(email: "richard@gmail.com", password: "123456", first_name: "Richard", last_name: "Phase", gender: "male", level: "beginner", age: 80, location: "Bromley, London", top_roping:true, bouldering:true)
person9.photo.attach(io: file_9, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_13 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655128532/Belay_Buddies/1200px-C_C3_A9dric_Lachat_Innsbruck_2010_jrqxxt.jpg")
person13 = User.create!(email: "Cedric@gmail.com", password: "123456", first_name: "Cedric", last_name: "Lachat", gender: "male", level: "advanced", age: 37, location: "Zurich, Switzerland", top_roping:true, sport_climbing:true)
person13.photo.attach(io: file_13, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_14 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655283738/Belay_Buddies/ife_iu00sb.png")
person14 = User.create!(email: "ife@gmail.com", password: "123456", first_name: "Ife", last_name: "Odugbesan", gender: "male", level: "intermediate", age: 28, location: "Brixton, London", bouldering:true, top_roping:true)
person14.photo.attach(io: file_14, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_15 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655285463/Belay_Buddies/janja_wy4lwf.jpg")
person15 = User.create!(email: "janja@gmail.com", password: "123456", first_name: "Janja", last_name: "Garnbret", gender: "female", level: "advanced", age: 23, location: "Ljubljana, Slovenia", trad_climbing:true, sport_climbing:true)
person15.photo.attach(io: file_15, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_16 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655286323/Belay_Buddies/marco_pwuj4s.jpg")
person16 = User.create!(email: "marco@gmail.com", password: "123456", first_name: "Marco", last_name: "Ricci", gender: "male", level: "intermediate", age: 27, location: "Rome, Italy", bouldering:true, trad_climbing:true)
person16.photo.attach(io: file_16, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_17 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655375247/Belay_Buddies/todd_h6skdu.jpg")
person17 = User.create!(email: "todd@gmail.com", password: "123456", first_name: "Todd", last_name: "Neale", gender: "male", level: "beginner", age: 29, location: "Sheffield, England", bouldering:true, sport_climbing:true)
person17.photo.attach(io: file_17, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

file_18 = URI.open("https://res.cloudinary.com/tassilobrecht/image/upload/v1655376821/Belay_Buddies/harriett_iczrjx.jpg")
person18 = User.create!(email: "harriett@gmail.com", password: "123456", first_name: "Harriet", last_name: "Bullough", gender: "female", level: "intermediate", age: 26, location: "Hackney, London", trad_climbing:true sport_climbing:true)
person18.photo.attach(io: file_18, filename:"nes.jpg", content_type: "image/jpg")
p "new user created"

Review.create!(description:"Advanced climber who will help you improve your bouldering technique.", rating: 5, user: person4, author: person13)

Review.create!(description:"He's too advanced for me..!", rating: 3, user: person4, author: person15)

Review.create!(description:"Can't climb well but friendly :)", rating: 5, user: person1, author: person7)

Review.create!(description:"Strong climber for his age. Patient.", rating: 5, user: person3, author: person10)

Review.create!(description:"Fun to go climbing with!", rating: 5, user: person2, author: person16)

Review.create!(description:"Very fast.", rating: 2, user: person7, author: person6)

Review.create!(description:"Super chill and relaxed. Will help you become a better climber.", rating: 5, user: person14, author: person1)

Review.create!(description:"Didn't show up on time.", rating: 3, user: person2, author: person8)

Review.create!(description:"Average climber.", rating: 3, user: person17, author: person13)

Review.create!(description:"Professional rock climber with advanced techniques.", rating: 5, user: person10, author: person14)
