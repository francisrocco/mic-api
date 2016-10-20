# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

nate = Author.create(name: "Nate Abrams")
rachel_g = Author.create(name: "Rachel George")
phil = Author.create(name: "Phil Gwinn")
christine = Author.create(name: "Christine Salek")
rachel_l = Author.create(name: "Rachel Lesser")
christopher = Author.create(name: "Christopher Maroshegyi")
lauren = Author.create(name: "Lauren Clark")
easha = Author.create(name: "Easha Acharya")
shimon = Author.create(name: "Shimon Moshehai")
medha = Author.create(name: "Medha Chandorkar")

art0 = Article.create(title: "Six Lessons that I've Learned about Fostering Good Discussions on PolicyMic", content: Faker::Hipster.words(349, false, false).join(" "), author_id: nate.id)
art1 = Article.create(title: "Arrested for Refusing to Leave Partner's Bedside in Missouri Hospital: Visitation Rights Still a Murky Area in State Law", content: Faker::Hipster.words(542, false, false).join(" "), author_id: rachel_g.id, bootcamp: true)
art2 = Article.create(title: "Revolutions Second Half Might Signal TV Shows Demise", content: Faker::Hipster.words(653, false, false).join(" "), author_id: phil.id)
art3 = Article.create(title: "Teenage Girls Started Prostitution Ring, Essentially Define Misogyny", content: Faker::Hipster.words(552, false, false).join(" "), author_id: christine.id)
art4 = Article.create(title: "North Carolina's Bill to Ban Sex-Selective Abortion", content: Faker::Hipster.words(509, false, false).join(" "), author_id: rachel_l.id, bootcamp: true)
art5 = Article.create(title: "CMILES WILL DO BRAIN Partnerhip Smart Move for the U.S.", content: Faker::Hipster.words(542, false, false).join(" "), author_id: christopher.id)
art6 = Article.create(title: "Kim-Jong-Un vs. Mitch McConnell: Who's More Dangerous?", content: Faker::Hipster.words(655, false, false).join(" "), author_id: lauren.id, bootcamp: true)
art7 = Article.create(title: "Puerto Rico Statehood: With Will Of Puerto Ricans Unclear, White House Allocates $2.5 Million For New Vote", content: Faker::Hipster.words(1126, false, false).join(" "), author_id: easha.id, bootcamp: true)
art8 = Article.create(title: "Palestinian Prime Minister Resigns: Peace Process on Hold", content: Faker::Hipster.words(368, false, false).join(" "), author_id: shimon.id, bootcamp: true)
art9 = Article.create(title: "Immigration Reform 2013: Democrats Have the Edge", content: Faker::Hipster.words(433, false, false).join(" "), author_id: medha.id, bootcamp: true)
