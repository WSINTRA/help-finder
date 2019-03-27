# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.delete_all
# ServiceType.delete_all
# # Facility.delete_all
# Service.delete_all
# Comment.delete_all

kitchen = ServiceType.create!(name: "Kitchen")
facility = Facility.create!(name: "Feed the People", address: "1000 Fake Pl.")
kitchenservice = Service.create!(service_type: kitchen.id, description: "Taco Tuesday!", hours: "11AM - 2PM")

facility.services << kitchenservice


john = User.create!(username: "John", password: "abcdefg", password_confirmation: "abcdefg")
comment = Comment.create!(description: "Wow, the food sux", facility: facility, user: john)
