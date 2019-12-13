Coupon.destroy_all
Company.destroy_all
Field.destroy_all
Article.destroy_all
Researcher.destroy_all

un_goals = [
  ["No Poverty", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576102968/Saverz/yebhxrbrbqlog8elf1q6.jpg", "Economic growth must be inclusive to provide sustainable jobs and promote equality.", 1],
  ["Zero Hunger", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576102976/Saverz/b0ick7wo9c6sgrwgxwc1.jpg", "The food and agriculture sector offers key solutions for development, and is central for hunger and poverty eradication.", 2],
  ["Good Health and Well-being", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576102983/Saverz/ptbqxux7oczp2ggtzn0s.jpg", "Ensuring healthy lives and promoting the well-being for all at all ages is essential to sustainable development.", 3],
  ["Quality Education", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576102987/Saverz/hg3lxiwog1h29rgmkkbu.jpg", "Obtaining a quality education is the foundation to improving people’s lives and sustainable development.", 4],
  ["Gender Equality", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576102991/Saverz/p44m4d2jptqp9ltlrwmg.jpg" ,"Gender equality is not only a fundamental human right, but a necessary foundation for a peaceful, prospero and sustainable world", 5],
  ["Clean Water and Sanitation","https://res.cloudinary.com/mpc-cloud/image/upload/v1576102996/Saverz/qzrcxayzvcqij0irtvsf.jpg" ,"Clean, accessible water for all is an essential part of the world we want to live in.", 6],
  ["Affordable and Clean Energy", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103000/Saverz/zdmviggl2pwn9k1ve20f.jpg" ,"Energy is central to nearly every major challenge and opportunity.", 7],
  ["Decent Work and Economic Growth", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103005/Saverz/abxsdmenlceflrba4kkw.jpg" ,"Sustainable economic growth will require societies to create the conditions that allow people to have quality jobs.", 8],
  ["Industry, Innovation, and Infrastructure", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103009/Saverz/a4afelx35lbixpesyu9n.jpg" ,"Investments in infrastructure are crucial to achieving sustainable development.", 9],
  ["Reducing Inequality", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103012/Saverz/edstj0e2fxiiww7gxzux.jpg" ,"To reduce inequalities, policies should be universal in principle, paying attention to the needs of disadvantaged and marginalized populations.", 10],
  ["Sustainable Cities and Communities", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103014/Saverz/dr12aqf0enjwuhowniml.jpg" ,"There needs to be a future in which cities provide opportunities for all, with access to basic services, energy, housing, transportation and more.", 11],
  ["Responsible Consumption and Production", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103018/Saverz/l825svcmr9ynbwh6pquk.jpg" ,"Responsible Production and Consumption", 12],
  ["Climate Action", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103021/Saverz/qu6d1mbkp4itwbvaszmb.jpg" ,"Climate change is a global challenge that affects everyone, everywhere.", 13],
  ["Life Below Water", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103023/Saverz/zrhmvgtkw3ksvan9ufxp.jpg" ,"Careful management of this essential global resource is a key feature of a sustainable future.", 14],
  ["Life On Land", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103026/Saverz/dywnkjj7sg7roi7tlmy9.jpg" ,"Sustainably manage forests, combat desertification, halt and reverse land degradation, halt biodiversity loss", 15],
  ["Peace, Justice, and Strong Institutions", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103030/Saverz/r1ed8r7ltr4e2e6klrl5.jpg" ,"Access to justice for all, and building effective, accountable institutions at all levels.", 16],
]

un_goals.each do |goal|
  Field.create!(name: goal[0], remote_photo_url: goal[1], descritption: goal[2], index: goal[3])
end


researchers = [
  ["Adriana Honor", "UFRJ", "http://lattes.cnpq.br/", "https://res.cloudinary.com/mpc-cloud/image/upload/v1575645747/Saverz/xr0ex38b5b7kba6uvx97.jpg", "Adriana Honor is 28 years-old and is graduated in Bussiness School. She worked in many companies and started to realize that people don't really pay attention to the world. That was the breakpoint for her, where she decided to quit her job and start a new life looking at others."],
  ["Hugo Hunter", "UERJ", "http://lattes.cnpq.br/", "https://res.cloudinary.com/mpc-cloud/image/upload/v1576103030/Saverz/r1ed8r7ltr4e2e6klrl5.jpg", "Bio about you here"],
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
