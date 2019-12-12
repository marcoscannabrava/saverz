Coupon.destroy_all
Company.destroy_all
Field.destroy_all
Article.destroy_all
Researcher.destroy_all

un_goals = [
  ["No Poverty", "app/assets/images/un-goal01.jpg", "Economic growth must be inclusive to provide sustainable jobs and promote equality." ],
  ["Zero Hunger", "app/assets/images/un-goal02.jpg", "The food and agriculture sector offers key solutions for development, and is central for hunger and poverty eradication."],
  ["Good Health and Well-being", "app/assets/images/un-goal03.jpg", "Ensuring healthy lives and promoting the well-being for all at all ages is essential to sustainable development."],
  ["Quality Education", "app/assets/images/un-goal04.jpg", "Obtaining a quality education is the foundation to improving people’s lives and sustainable development."],
  ["Gender Equality", "app/assets/images/un-goal05.jpg" ,"Gender equality is not only a fundamental human right, but a necessary foundation for a peaceful, prospero and sustainable world"],
  ["Clean Water and Sanitation","app/assets/images/un-goal06.jpg" ,"Clean, accessible water for all is an essential part of the world we want to live in."],
  ["Affordable and Clean Energy", "app/assets/images/un-goal07.jpg" ,"Energy is central to nearly every major challenge and opportunity."],
  ["Decent Work and Economic Growth", "app/assets/images/un-goal08.jpg" ,"Sustainable economic growth will require societies to create the conditions that allow people to have quality jobs."],
  ["Industry, Innovation, and Infrastructure", "app/assets/images/un-goal09.jpg" ,"Investments in infrastructure are crucial to achieving sustainable development."],
  ["Reducing Inequality", "app/assets/images/un-goal10.jpg" ,"To reduce inequalities, policies should be universal in principle, paying attention to the needs of disadvantaged and marginalized populations."],
  ["Sustainable Cities and Communities", "app/assets/images/un-goal11.jpg" ,"There needs to be a future in which cities provide opportunities for all, with access to basic services, energy, housing, transportation and more."],
  ["Responsible Consumption and Production", "app/assets/images/un-goal12.jpg" ,"Responsible Production and Consumption"],
  ["Climate Action", "app/assets/images/un-goal13.jpg" ,"Climate change is a global challenge that affects everyone, everywhere."],
  ["Life Below Water", "app/assets/images/un-goal14.jpg" ,"Careful management of this essential global resource is a key feature of a sustainable future."],
  ["Life On Land", "app/assets/images/un-goal15.jpg" ,"Sustainably manage forests, combat desertification, halt and reverse land degradation, halt biodiversity loss"],
  ["Peace, Justice, and Strong Institutions", "app/assets/images/un-goal16.jpg" ,"Access to justice for all, and building effective, accountable institutions at all levels."],
]

un_goals.each do |goal|
  Field.create!(name: goal[0], remote_photo_url: goal[1], descritption: goal[2], index: goal[3])
end


researchers = [
  ["Adriana Honor", "UFRJ", "http://lattes.cnpq.br/", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645747/Saverz/xr0ex38b5b7kba6uvx97.jpg", "Adriana Honor is 28 years-old and is graduated in Bussiness School. She worked in many companies and started to realize that people don't really pay attention to the world. That was the breakpoint for her, where she decided to quit her job and start a new life looking at others."],
  ["Hugo Hunter", "UERJ", "http://lattes.cnpq.br/", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645747/Saverz/xr0ex38b5b7kba6uvx97.jpg", "Bio about you here"],
]

researchers.each do |researcher|
  Researcher.create!(full_name: researcher[0], university: researcher[1], lattes_link: researcher[2], photo: researcher[3], bio: researcher[4])
end

first_researcher = Researcher.first

articles = [
  ["Learning in Science. The Implications of Children's Science.",
    "Designed primarily for practicing teachers and for use in pre- and in-service courses in science education, this book focuses on how 10- to 15-year-old children learn science. Findings are analyzed and suggestions are offered for improving the teaching/learning process. Issues are discussed and organized into five major sections.",
    Field.find_by_slug('quality-education'),
    first_researcher],
  ["Families, Policies, And Gender Equality", "Family shifts: families, policies, and gender equality - HathiTrust. 15 May 2017. Women are increasingly the breadwinners of their families, a shift in Depending on who you talk to, the decline of the traditional family in Only doing this will allow policies seeking to empower women and girls really work.", Field.find_by_slug('gender-equality'), first_researcher],
  ["Gender Equality And Intrastate Armed Conflict", "In this article, I examine to what extent gender equality is associated with lower levels of intrastate armed conflict. I use three measures of gender equality: (1) a dichotomous indicator of whether the highest leader of a state is a woman; (2) the percentage of women in parliament; and (3) the female-to-male higher education attainment ratio.", Field.find_by_slug('gender-equality'), first_researcher],
]

articles.each do |article|
  Article.create!(title: article[0], description: article[1], field: article[2], researcher: article[3])
end

UpdateCompaniesJob.perform_now
UpdateCouponsJob.perform_now
