Coupon.destroy_all
Company.destroy_all
Field.destroy_all

un_goals = [ 
  ["No Poverty", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645747/Saverz/xr0ex38b5b7kba6uvx97.jpg"],
  ["Zero Hunger", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645748/Saverz/m9nfmpre89olvrokz54c.jpg"],
  ["Good Health and Well-being", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645750/Saverz/h4911ecwxvddgaqasvdw.jpg"],
  ["Quality Education", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645751/Saverz/kdoui2rshjr9fxgcapkj.jpg"],
  ["Gender Equality", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645753/Saverz/wdv4jjnk1imewusfxgtz.jpg"],
  ["Clean Water and Sanitation", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645754/Saverz/ojfmcmjairn8bwjavm4l.jpg"],
  ["Affordable and Clean Energy", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645756/Saverz/kzasn6lcvtyuzdwjqdtk.jpg"],
  ["Decent Work and Economic Growth", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645758/Saverz/vsm4enoli6o606wqv6fv.jpg"],
  ["Industry, Innovation, and Infrastructure", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645760/Saverz/x6rutyfecdnevqzwsiaw.jpg"],
  ["Reducing Inequality", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645761/Saverz/qzkh4eiudhxzf3ryfvfy.jpg"],
  ["Sustainable Cities and Communities", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645764/Saverz/pydwvop2r3u37rjcfnyw.jpg"],
  ["Responsible Consumption and Production", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645765/Saverz/ys4gvyejwoswj1hlagze.jpg"],
  ["Climate Action", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645767/Saverz/o1pu1p30pb6omjl2bxm1.jpg"],
  ["Life Below Water", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645769/Saverz/jyyezdjuwqttfnkqjxck.jpg"],
  ["Life On Land", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645770/Saverz/t2y6n02z5um7rvr6nf8b.jpg"],
  ["Peace, Justice, and Strong Institutions", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645772/Saverz/nqnch5dudiv7to9cy2vt.jpg"],
  ["Partnerships for the Goals", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575647641/Saverz/un-goal17_orowvl.jpg"],
]

un_goals.each do |goal|
  Field.create!(name: goal[0], remote_photo_url: goal[1])
end

UpdateCompaniesJob.perform_now
UpdateCouponsJob.perform_now
