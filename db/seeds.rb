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

    user1 = User.create(email: 'themicheldu34@yopmail.com', description: '54 ans :', first_name: 'michel', last_name: 'dupont')
    # user2 = User.create(email: 'theJeandu34@yopmail.com', description: '55 ans :', first_name: 'jean', last_name: 'dupont')
    puts "users created"
    event = Event.create(start_date: DateTime.now, title: "afterwork", description: "boire", price: 30)

    Attendance.create(user: user1, event: event)