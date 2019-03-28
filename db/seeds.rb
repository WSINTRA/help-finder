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

ServiceType.destroy_all
Service.destroy_all
Facility.destroy_all
FacilityService.destroy_all

kitchen = ServiceType.create!(name: "Kitchen")
hygeine = ServiceType.create!(name: "Hygeine")
shelter = ServiceType.create!(name: "Shelter")

facility1 = Facility.create!(name: "Feed the People", address: "1000 Fake Pl.", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12096.710666694744!2d-74.01262153022462!3d40.714105200000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a21840b6a83%3A0x92e47bf303886181!2sNew+York+City+Health+Department!5e0!3m2!1sen!2sus!4v1553699848794" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
facility2 = Facility.create!(name: "Providence House", address: "703 Lexington Avenue, Brooklyn, NY 11221", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3025.2722393044355!2d-73.93491548474921!3d40.6900015468982!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25c0b1f391f93%3A0x8f8ce0e75cd8ab2b!2s703+Lexington+Ave%2C+Brooklyn%2C+NY+11221!5e0!3m2!1sen!2sus!4v1553780153373" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
facility3 = Facility.create!(name: "Neighbors Together Corporation", address: "2094 Fulton Street Brooklyn, NY 11231", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3025.803809651561!2d-73.91602988474948!3d40.67829154761428!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25c68344808cd%3A0xb76df2641db26a39!2s2094+Fulton+St%2C+Brooklyn%2C+NY+11233!5e0!3m2!1sen!2sus!4v1553780314200" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
facility4 = Facility.create!(name: "Shelter and Food for the Homeless Inc", address: "602 E 9th Street, New York City, NY 10009", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3023.7194306990505!2d-73.97976618474824!3d40.724192544806726!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25979fa364c43%3A0x54743d80a9c8f4f8!2s368+E+8th+St+%23+East%2C+New+York%2C+NY+10009!5e0!3m2!1sen!2sus!4v1553780496396" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
facility5 = Facility.create!(name: "New York City Rescue Mission", address: "90 Lafayette Street, New York City, NY 10013", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3024.0216476528503!2d-74.00380978474836!3d40.717539945213815!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a20bb39638f%3A0x8f08d0a623041214!2s90+Lafayette+St%2C+New+York%2C+NY+10013!5e0!3m2!1sen!2sus!4v1553780613796" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')
facility6 = Facility.create!(name: "Becasue Everyone Deserves Shelter", address: "1788 St. Johns Place, Brooklyn, NY 11233", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3026.1975123853863!2d-73.92041108474969!3d40.6696168481446!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25c617dda62f1%3A0x79f8fe9b9cb4af1!2s1788+St+Johns+Pl%2C+Brooklyn%2C+NY+11233!5e0!3m2!1sen!2sus!4v1553780779285" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')


yummy_yummy = Facility.create!(name: "Yummy Yummy", address: "13 Fake Pl.", map_link: '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d12096.710666694744!2d-74.01262153022462!3d40.714105200000006!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25a21840b6a83%3A0x92e47bf303886181!2sNew+York+City+Health+Department!5e0!3m2!1sen!2sus!4v1553699848794" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe>')



kitchenservice = Service.create!(service_type: kitchen.id, description: "Taco Tuesday!", hours: "11AM - 2PM")
kitchenservice2 = Service.create!(service_type: kitchen.id, description: "Steak Saturday!", hours: "11AM - 2PM")
kitchenservice3 = Service.create!(service_type: kitchen.id, description: "Soup kitchen", hours: "
Thursday	9AM–6PM
Friday	9AM–6PM
Saturday	Closed
Sunday	Closed
Monday	9AM–6PM
Tuesday	9AM–6PM
Wednesday	9AM–6PM")
kitchenservice4 = Service.create!(service_type: kitchen.id, description: "Holy House of Prayer for All People Inc Soup Kitchen.", hours: "Monday and Wednesday 6-9pm")
kitchenservice5 = Service.create!(service_type: kitchen.id, description: "Trinity's Services And Food for the Homeless.", hours: "Monday to Friday 12-2pm")



sleeptime2 = Service.create!(service_type: shelter.id, description: "Providence House. (718)455-0197, Many of these shelters now have waiting lists. Please call before going to them. ", hours: "24 hours a day")
# facility.services << kitchenservice
sleeptime3 = Service.create!(service_type: shelter.id, description: "B.E.D.S, Our goal at B.E.D.S. is to help men become a functional and successful part of society. We do so by building they're confidence, social and life skills as well as offering guidance and a home like environment. We are here to do our part to decrease homelessness and rebuild the American dream! ", hours: "24/7")

sleeptime4 = Service.create!(service_type: shelter.id, description: "THE YOUTH HOSTEL AT TRINITY, The building is yours to use while you're here, and if you need it, have access to our kitchen, outdoor garden space, and community room. All we ask is a $30 per person, per night donation to help us cover costs.", hours: "24/7")
sleeptime5 = Service.create!(service_type: shelter.id, description: 'New York City Rescue Mission, New York City Rescue Mission and Goodwill Rescue Mission joined forces with The Bowery Mission to say "yes" to more people, more often, with more and better services. Together, we are one organization providing comprehensive resources to individuals experiencing homelessness and hunger in New Jersey and New York.', hours: "24/7")


cleantime1 = Service.create!(service_type: hygeine.id, description: "Neighbors Together Corporation. Showers and washrooms avaiable on site", hours: "")
cleantime2 = Service.create!(service_type: hygeine.id, description: "New York City Mission Washrooms Services avaiable with shelter", hours: "24/7")




FacilityService.create!(service: sleeptime3, facility: facility6)
FacilityService.create!(service: kitchenservice4, facility: facility6)
FacilityService.create!(service: sleeptime5, facility: facility5)
FacilityService.create!(service: cleantime2, facility: facility5)
FacilityService.create!(service: kitchenservice5, facility: facility4)
FacilityService.create!(service: sleeptime4, facility: facility4)

FacilityService.create!(service: kitchenservice3, facility: facility3)
FacilityService.create!(service: cleantime1, facility: facility2)
FacilityService.create!(service: sleeptime2, facility: facility2)
FacilityService.create!(service: kitchenservice, facility: facility1)
FacilityService.create!(service: kitchenservice, facility: yummy_yummy)
FacilityService.create!(service: kitchenservice2, facility: yummy_yummy)


john = User.create!(username: "John", password: "abcdefg", password_confirmation: "abcdefg")
comment = Comment.create!(description: "Wow, the food sux", facility: facility1, user: john)
UserComment.create!(user: john, comment: comment, facility: facility1)