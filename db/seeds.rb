# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


User.destroy_all

User.create!(email: "melina@gmail.com", password: "123456", first_name: "Melina", last_name: "Kim", gender: "male", level: "beginner", age: 28, location: "Chelsea, London", indoor_bouldering:true )
p "new user created"
User.create!(email: "olivia@gmail.com", password: "123456", first_name: "Olivia", last_name: "Johnson", gender: "female", level: "intermediate", age: 22, location: "Kensington, London", indoor_bouldering:true )
p "new user created"
User.create!(email: "henry@gmail.com", password: "123456", first_name: "Henry", last_name: "Brown", gender: "male", level: "beginner", age: 33, location: "Greenwich, London", indoor_bouldering:true)
p "new user created"
User.create!(email: "lucas@gmail.com", password: "123456", first_name: "Lucas", last_name: "Jones", gender: "male", level: "advanced", age: 19, location: "Soho, London", indoor_bouldering:true, outdoor_sport_climbing:true )
p "new user created"
User.create!(email: "mia@gmail.com", password: "123456", first_name: "Mia", last_name: "Davis", gender: "female", level: "advanced", age: 40, location: "Stratford, London", indoor_bouldering:true, outdoor_sport_climbing:true )
p "new user created"
User.create!(email: "michael@gmail.com", password: "123456", first_name: "Michael", last_name: "Garcia", gender: "male", level: "intermediate", age: 25, location: "Hoxton, London", indoor_bouldering:true, outdoor_sport_climbing:true )
p "new user created"
