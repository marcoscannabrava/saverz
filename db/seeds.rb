# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

un_goals = [ 
  ["No Poverty", "un-goal01.jpg"],
  ["Zero Hunger", "un-goal02.jpg"],
  ["Good Health and Well-being", "un-goal03.jpg"],
  ["Quality Education", "un-goal04.jpg"],
  ["Gender Equality", "un-goal05.jpg"],
  ["Clean Water and Sanitation", "un-goal06.jpg"],
  ["Affordable and Clean Energy", "un-goal07.jpg"],
  ["Decent Work and Economic Growth", "un-goal08.jpg"],
  ["Industry, Innovation, and Infrastructure", "un-goal09.jpg"],
  ["Reducing Inequality", "un-goal10.jpg"],
  ["Sustainable Cities and Communities", "un-goal11.jpg"],
  ["Responsible Consumption and Production", "un-goal12.jpg"],
  ["Climate Action", "un-goal13.jpg"],
  ["Life Below Water", "un-goal14.jpg"],
  ["Life On Land", "un-goal15.jpg"],
  ["Peace, Justice, and Strong Institutions", "un-goal16.jpg"],
  ["Partnerships for the Goals" "un-goal17.jpg"],
]

un_goals.each do |goal|
  Field.create!(name: goal[0], photo: goal[1])
end
