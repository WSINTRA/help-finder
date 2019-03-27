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
facility = Facility.create!(name: "Feed the People", address: "1000 Fake Pl.", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12096.710666694744!2d-74.01262153022462!3d40.714105200000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a21840b6a83%3A0x92e47bf303886181!2sNew+York+City+Health+Department!5e0!3m2!1sen!2sus!4v1553699848794" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
kitchenservice = Service.create!(service_type: kitchen.id, description: "Taco Tuesday!", hours: "11AM - 2PM")

facility.services << kitchenservice


john = User.create!(username: "John", password: "abcdefg", password_confirmation: "abcdefg")
comment = Comment.create!(description: "Wow, the food sux", facility: facility, user: john)
