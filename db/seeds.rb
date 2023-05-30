# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
puts "#####################"
puts ' Cleaning database...'
puts "#####################"
Users.destroy_all

user1 = User.create(email: "foucauld@qmail.com", password: "123456", name: "foucauld")
user2 = User.create(email: "alexandre@gmail.com", password: "123456", name: "Alexandre")
user3 = User.create(email: "fx@gmail.com", password: "123456", name: "FX")
user4 = User.create(email: "jane@gmail.com", password: "123456", name: "Jane")
user5 = User.create(email: "phil@gmail.com", password: "123456", name: "phil")

puts 'Finished!'
