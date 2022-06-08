# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all

User.create!(email: "melina@gmail.com", password: "123456", first_name: "Melina", last_name: "Kim", gender: "female", level: "beginner", age: 28, location: "Canary Wharf, London", indoor_bouldering:true, indoor_sport_climbing:true)
p "new user created"
User.create!(email: "tassilo@gmail.com", password: "123456", first_name: "Tassilo", last_name: "Brecht", gender: "male", level: "beginner", age: 18, location: "Camden, London", indoor_bouldering:true)
p "new user created"
User.create!(email: "james@gmail.com", password: "123456", first_name: "James", last_name: "Hsia", gender: "male", level: "intermediate", age: 50, location: "Finchley, London", outdoor_sport_climbing:true)
p "new user created"
User.create!(email: "usman@gmail.com", password: "123456", first_name: "Usman", last_name: "Akram", gender: "male", level: "advanced", age: 35, location: "Dallston, London", indoor_bouldering:true, indoor_top_roping:true, outdoor_sport_climbing:true)
p "new user created"
User.create!(email: "phelim@gmail.com", password: "123456", first_name: "Phelim", last_name: "Dunleavy", gender: "male", level: "advanced", age: 28, location: "Hoxton, London", outdoor_trad_climbing:true, outdoor_sport_climbing:true)
p "new user created"
User.create!(email: "louis@gmail.com", password: "123456", first_name: "Louis", last_name: "Leslie", gender: "male", level: "advanced intermediate", age: 25, location: "Hoxton, London", indoor_top_roping:true, outdoor_sport_climbing:true)
p "new user created"
