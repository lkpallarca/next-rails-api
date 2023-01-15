# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

COMPANIES = [
  "First Circle",
  "Puregold Price Club, Inc.",
  "Accenture Inc",
  "Security Bank Corp",
  "Landbank of the Philippines",
  "MERALCO",
  "Mercury Drug Corp",
  "Petron Corp",
  "Cebu Pacific",
  "Air Asia",
  "PLDT Inc",
  "Philippine Airlines Inc",
  "Monde Nissin Corp",
  "Chevron Philippines, Inc",
  "Ayala Land Inc",
  "TMH Incorporated",
  "Huawei Technologies Philippines Inc",
  "Yamaha Motors Philippines Inc",
  "Maynilad Water Services, Inc",
  "Jollibee Foods Corp",
  "Waltermart Supermarket Inc",
  "San Miguel Corp",
  "Pure-Foods Hormel Co., Inc",
  "Wilcon Depot Inc",
  "SM Supermalls Inc"
].freeze

TITLES = [
  "Acquisitions Manager",
  "Sales Representative",
  "Technical Support Representative",
  "Bank Teller",
  "Branch Manager",
  "Field Line Technician",
  "Nurse/Doctor",
  "Gasoline Boy",
  "Flight Attendant",
  "Pilot",
  "Ramp Agent",
  "Chief Operations Officer",
  "Digital Marketing Officer I",
  "Mechanic",
  "Data Analysis Engineer",
  "Software Developer",
  "Aeronautical Engineer",
  "Flutter Developer",
  "Test Driver",
  "Barber",
  "Company Nurse",
  "Nutritionist",
  "Warehouse Supervisor",
  "Clerk",
  "Company Lawyer",
].freeze

STATUS = [
  "hiring", 
  "selecting", 
  "closed"
].freeze

LOCATIONS = [
  "Makati",
  "Laguna",
  "Bulacan",
  "Cavite",
  "BGC, Taguig",
  "Antique"
]

SUMMARIES = [
  "When individual economies experience hard times, you can often expect rebounds to occur in the form of localized unification and in-spending; when the world economy falls under hard times, the natural rebound occurs in the areas of travel, retail, tourism, and hospitality all of which require dedicated customer service candidates at all levels.",
  "As more and more people log on to the web, their online footprints create huge opportunities for mining and interpreting data that is helpful to all kinds of businesses. Using this data to predict user habits (like online shopping, video streaming, or utilizing online resources) is a massively powerful industry and the key players keeping this industry thriving are those working in Information Technology.",
  "Digital marketing is a rapidly growing industry in Southeast Asia, but especially in The Philippines, so the roles are readily available if you've got what it takes. Skills like attention to detail, the ability to research and interpret data, and communicate business trends to assemble effective sales strategies are highly valued.",
  "Since just about every company in every industry uses data to build, sell, and deliver products or services to their customers, jobs requiring data analysis and data entry skills are in high demand throughout The Philippines.",
  "If the 2020 Coronavirus pandemic taught us anything, it's that nurses and medical professionals are overworked, undervalued and yet seriously in-demand throughout all corners of the globe. As many Southeast Asian countries continue to feel the lasting, long-term effects of COVID-19, healthcare in The Philippines's largest and smallest rural and urban areas remains a top priority one from which it will only recover with the right healthcare professionals on hand. ",
  "In many parts of The Philippines, teachers, like students, were forced to adapt to remote schooling as a result of the COVID-19 pandemic. Now that modified forms of education are becoming more common throughout the country, the demand for teachers at all levels has increased.",
  "Job candidates who possess great project management skills can expect to successfully plan, manage, and execute business projects for several different industries. Such experience needed for these types of positions includes a mix of technical know-how and interpersonal skills to monitor and assess project performance, manage the flow of resources, lead effective teams and deliver results to key stakeholders.",
  "The ability to sell might not be for everyone. But for those who can, your skills are needed throughout The Philippines. After experiencing two years of on-off lockdowns and forced isolation, various cities throughout the country are experiencing a resurgence in spending. In whichever industry your sales skills can be utilized, take advantage of the major growth opportunities. ",
  "As new technologies continue to spring up with each passing business quarter, the need for qualified candidates with high-level web development skills is in great demand across Asia and especially in The Philippines. Learning and honing multiple programming languages is an asset for anyone looking to take their Web Development to another level. Proficiency in writing HTML code, CSS, and Java, is essential; so too is a committed and organized demeanor that works well under pressure. ",
  "Being adept at social media might sound simple enough but it involves so much more than just posting photos and crafting witty captions. Social Media efficiency is a rapidly growing commodity in many different industries. And while Millennials and members of Generation Z might have the upper hand when it comes to this youth-centric area of marketing, it's never too late to learn or refine these highly desirable skills."
]

25.times do
  Job.create(
    title: TITLES.sample,
    company: COMPANIES.sample,
    summary: SUMMARIES.sample,
    status: STATUS.sample,
    salary_offer: rand(575..50000),
    location: LOCATIONS.sample,
    target_deadline: rand(180).days.from_now
  )
end