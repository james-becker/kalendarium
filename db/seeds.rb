Calendar.create!([
  {name: "Appointments", description: "Upcoming events related to school and work", user_id: 1}
])
Event.create!([
  {start_time: "2017-04-01 18:00:00", end_time: "2017-04-01 19:00:00", calendar_id: 1, name: "Dinner with Ian", description: "Meet Ian at Qdoba on 6th avenue. Will talk development."},
  {start_time: "2017-03-31 02:19:00", end_time: "2017-03-31 02:19:00", calendar_id: 1, name: "Lunch with Jim", description: "At the firehouse. Free beer with lunch!"},
  {start_time: "2017-03-22 18:21:00", end_time: "2017-03-22 20:21:00", calendar_id: 1, name: "Movie with Jessica", description: "We're gonna have a blast!"},
  {start_time: "2017-03-29 18:00:00", end_time: "2017-03-29 19:00:00", calendar_id: 1, name: "Dinner with Mollie", description: "Meet at Kimono Sushi on 10th avenue."},
  {start_time: "2017-03-19 19:00:00", end_time: "2017-03-19 20:00:00", calendar_id: 1, name: "Le Wagon presentation", description: "Presenting with Juliette"},
  {start_time: "2017-03-30 23:00:00", end_time: "2017-03-30 23:00:00", calendar_id: 1, name: "TalenQuest for Quipu due", description: "Submit with writeup"},
  {start_time: "2017-04-20 20:30:00", end_time: "2017-04-20 20:30:00", calendar_id: 1, name: "Leave for Maldives", description: "Air Taiwan F3299"}
])
User.create!([
  {name: "James"}
])
