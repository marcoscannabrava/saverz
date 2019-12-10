Coupon.destroy_all
Company.destroy_all
Field.destroy_all
Article.destroy_all
Researcher.destroy_all

un_goals = [
  ["No Poverty", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645747/Saverz/xr0ex38b5b7kba6uvx97.jpg", "Economic growth must be inclusive to provide sustainable jobs and promote equality." ],
  ["Zero Hunger", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645748/Saverz/m9nfmpre89olvrokz54c.jpg", "The food and agriculture sector offers key solutions for development, and is central for hunger and poverty eradication."],
  ["Good Health and Well-being", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645750/Saverz/h4911ecwxvddgaqasvdw.jpg", "Ensuring healthy lives and promoting the well-being for all at all ages is essential to sustainable development."],
  ["Quality Education", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645751/Saverz/kdoui2rshjr9fxgcapkj.jpg", "Obtaining a quality education is the foundation to improving people’s lives and sustainable development."],
  ["Gender Equality", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645753/Saverz/wdv4jjnk1imewusfxgtz.jpg","Gender equality is not only a fundamental human right, but a necessary foundation for a peaceful, prospero and sustainable world"],
  ["Clean Water and Sanitation", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645754/Saverz/ojfmcmjairn8bwjavm4l.jpg","Clean, accessible water for all is an essential part of the world we want to live in."],
  ["Affordable and Clean Energy", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645756/Saverz/kzasn6lcvtyuzdwjqdtk.jpg","Energy is central to nearly every major challenge and opportunity."],
  ["Decent Work and Economic Growth", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645758/Saverz/vsm4enoli6o606wqv6fv.jpg","Sustainable economic growth will require societies to create the conditions that allow people to have quality jobs."],
  ["Industry, Innovation, and Infrastructure", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645760/Saverz/x6rutyfecdnevqzwsiaw.jpg","Investments in infrastructure are crucial to achieving sustainable development."],
  ["Reducing Inequality", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645761/Saverz/qzkh4eiudhxzf3ryfvfy.jpg","To reduce inequalities, policies should be universal in principle, paying attention to the needs of disadvantaged and marginalized populations."],
  ["Sustainable Cities and Communities", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645764/Saverz/pydwvop2r3u37rjcfnyw.jpg","There needs to be a future in which cities provide opportunities for all, with access to basic services, energy, housing, transportation and more."],
  ["Responsible Consumption and Production", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645765/Saverz/ys4gvyejwoswj1hlagze.jpg","Responsible Production and Consumption"],
  ["Climate Action", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645767/Saverz/o1pu1p30pb6omjl2bxm1.jpg","Climate change is a global challenge that affects everyone, everywhere."],
  ["Life Below Water", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645769/Saverz/jyyezdjuwqttfnkqjxck.jpg","Careful management of this essential global resource is a key feature of a sustainable future."],
  ["Life On Land", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645770/Saverz/t2y6n02z5um7rvr6nf8b.jpg","Sustainably manage forests, combat desertification, halt and reverse land degradation, halt biodiversity loss"],
  ["Peace, Justice, and Strong Institutions", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645772/Saverz/nqnch5dudiv7to9cy2vt.jpg","Access to justice for all, and building effective, accountable institutions at all levels."],
  ["Partnerships for the Goals", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575647641/Saverz/un-goal17_orowvl.jpg","Revitalize the global partnership for sustainable development."],
]

un_goals.each do |goal|
  Field.create!(name: goal[0], remote_photo_url: goal[1], descritption: goal[2])
end


researchers = [
  ["Adriana Honor", "UFRJ", "http://lattes.cnpq.br/", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645747/Saverz/xr0ex38b5b7kba6uvx97.jpg"],
  ["Hugo Hunter", "UERJ", "http://lattes.cnpq.br/", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645747/Saverz/xr0ex38b5b7kba6uvx97.jpg"],
]

researchers.each do |researcher|
  Researcher.create!(full_name: researcher[0], university: researcher[1], lattes_link: researcher[2], photo: researcher[3])
end

first_researcher = Researcher.first

articles = [
  ["Project One", "Project one description", Field.find_by_slug('no-poverty'), first_researcher],
  ["Project Two", "Project two description", Field.find_by_slug('no-poverty'), first_researcher],
  ["Project Three", "Project three description", Field.find_by_slug('no-poverty'), first_researcher],
]

articles.each do |article|
  Article.create!(title: article[0], description: article[1], field: article[2], researcher: article[3])
end

# UpdateCompaniesJob.perform_now
# UpdateCouponsJob.perform_now
