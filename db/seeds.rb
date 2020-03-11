# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user1 = User.find_or_create_by(username: "Laina", email: "ok@blahblah.com", password: "yeah right")
user2 = User.find_or_create_by(username: "Jo", email: "Jo@blahblah.com", password: "not a secret")

list1 = List.find_or_create_by(title: "To-Do", user_id: user1.id)

task1 = Task.find_or_create_by(description: "seed all data", user_id: user1.id, importance: 2, urgency: "01/18/2020", pomodoros: 0, complete_status: false, category: "wip", predicted_pom: 2, environment: "small quiet office", priority_order: 0)
task2 = Task.find_or_create_by(description: "fetch these tasks!", user_id: user2.id, importance: 5, urgency: "01/19/2020", pomodoros: 0, complete_status: false, category: "complete", predicted_pom: 3, environment: "small quiet office", priority_order: 0)

pom1 = Pomodoro.find_or_create_by(timer_length: "00:25:00", break_length: "00:05:00")

puts "Created new seeds :)"