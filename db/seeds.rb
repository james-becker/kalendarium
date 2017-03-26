# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user0 = User.create(name: "James")

calendar0 = Calendar.create(
  user_id: user0.id,
  name: "Appointments",
  description: "Upcoming events related to school and work"
  )

event0 = Event.create(
  calendar_id: calendar0.id,
  name: "Dinner with Ian",
  description: "Meet Ian at Qdoba on 6th avenue. Will talk development.",
  start_time: DateTime.strptime("01/04/2017 18:00", "%d/%m/%Y %H:%M"),
  end_time: DateTime.strptime("01/04/2017 19:00", "%d/%m/%Y %H:%M")
  )

event1 = Event.create(
  calendar_id: calendar0.id,
  name: "Dinner with Amanda",
  description: "Meet Amanda at Qdoba on 6th avenue. Will talk development.",
  start_time: DateTime.strptime("29/03/2017 18:00", "%d/%m/%Y %H:%M"),
  end_time: DateTime.strptime("29/03/2017 19:00", "%d/%m/%Y %H:%M")
  )
