# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'open-uri'

puts "cleaning database"
Chatroom.destroy_all
User.destroy_all

tassilo = User.create!(email: "tassilo@tassilo.com", password: "123456")
james = User.create!(email: "james@james.com", password: "123456")
melina = User.create!(email: "melina@melina.com", password: "123456")
usman = User.create!(email: "usman@usman.com", password: "123456")

Chatroom.create!(requester: melina, receiver: usman)
