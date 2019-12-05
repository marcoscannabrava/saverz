Coupon.destroy_all
Company.destroy_all
Field.destroy_all
un_goals = [
  ["No Poverty", "app/assets/images/un-goal01.jpg"],
  ["Zero Hunger", "app/assets/images/un-goal02.jpg"],
  ["Good Health and Well-being", "app/assets/images/un-goal03.jpg"],
  ["Quality Education", "app/assets/images/un-goal04.jpg"],
  ["Gender Equality", "app/assets/images/un-goal05.jpg"],
  ["Clean Water and Sanitation", "app/assets/images/un-goal06.jpg"],
  ["Affordable and Clean Energy", "app/assets/images/un-goal07.jpg"],
  ["Decent Work and Economic Growth", "app/assets/images/un-goal08.jpg"],
  ["Industry, Innovation, and Infrastructure", "app/assets/images/un-goal09.jpg"],
  ["Reducing Inequality", "app/assets/images/un-goal10.jpg"],
  ["Sustainable Cities and Communities", "app/assets/images/un-goal11.jpg"],
  ["Responsible Consumption and Production", "app/assets/images/un-goal12.jpg"],
  ["Climate Action", "app/assets/images/un-goal13.jpg"],
  ["Life Below Water", "app/assets/images/un-goal14.jpg"],
  ["Life On Land", "app/assets/images/un-goal15.jpg"],
  ["Peace, Justice, and Strong Institutions", "app/assets/images/un-goal16.jpg"],
  ["Partnerships for the Goals" "app/assets/images/un-goal17.jpg"],
]
un_goals.each do |goal|
  Field.create!(name: goal[0], remote_photo_url: goal[1])
end

