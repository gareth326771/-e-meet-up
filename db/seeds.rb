# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meetup.create(user_id: 1, location: "london", capacity: 3, date: "2018-12-28", description: "test description", price: 20, game: "CS:GO")
Meetup.create(user_id: 2, location: "London", capacity: 3, date: "2018-12-28", description: "test description", price: 20, game: "CS:GO")
Meetup.create(user_id: 3, location: "London", capacity: 3, date: "2018-12-28", description: "test description", price: 20, game: "CS:GO")
Meetup.create(user_id: 4, location: "London", capacity: 3, date: "2018-12-28", description: "test description", price: 20, game: "CS:GO")
Meetup.create(user_id: 5, location: "London", capacity: 3, date: "2018-12-28", description: "test description", price: 20, game: "CS:GO")
Meetup.create(user_id: 6, location: "London", capacity: 3, date: "2018-12-28", description: "test description", price: 20, game: "CS:GO")
Attendance.create(meetup_id: 6, user_id: 4,)
Attendance.create(meetup_id: 6, user_id: 3,)
Attendance.create(meetup_id: 6, user_id: 2,)
Attendance.create(meetup_id: 6, user_id: 1,)
