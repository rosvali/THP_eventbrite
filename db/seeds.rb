# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Event.destroy_all
Attendance.destroy_all

user = User.create(email: 'themicheldu34@yopmail.com', description: 'Je suis à la retraire', first_name: 'Michel', last_name: 'Dupont')
event = Event.create(start_date: DateTime.now, title: "Concours de belote", description: "S'amuser", price: 5)
Attendance.create(user: user, event: event)