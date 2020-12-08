# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Show.create([{
    show_name: "Muppets Now",
    episode_name: "Due Date",
    episode_number: 101,
    date: Time.now - 1.week,
    link: "https://www.disneyplus.com/video/a6347e83-8563-4333-bf9b-5f3e332d9ff8",
    availability: [true, false].sample
  },
  {
    show_name: "Muppets Now",
    episode_name: "Fever Pitch",
    episode_number: 102,
    date: Time.now - 2.weeks,
    link: "https://www.disneyplus.com/video/b9feb696-1eaa-4f56-a5d0-6a746357a8df",
    availability: [true, false].sample
  },
  {
    show_name: "Muppets Now",
    episode_name: "Getting Testy",
    episode_number: 103,
    date: Time.now - 3.weeks,
    link: "https://www.disneyplus.com/video/f923952a-c302-4669-85ab-dc7e98597b06",
    availability: [true, false].sample
  },
  {
    show_name: "Muppets Now",
    episode_name: "Sleep Mode",
    episode_number: 104,
    date: Time.now - 4.weeks,
    link: "https://www.disneyplus.com/video/0145bc52-b3ea-4d5d-8b15-4af1d0c0ab99",
    availability: [true, false].sample
  },
  {
    show_name: "Muppets Now",
    episode_name: "The I.T. Factor",
    episode_number: 105,
    date: Time.now - 5.weeks,
    link: "https://www.disneyplus.com/video/767aece9-da0f-4e21-a1e7-cac9cceb2015",
    availability: [true, false].sample
  },
  {
    show_name: "Muppets Now",
    episode_name: "Socialized",
    episode_number: 106,
    date: Time.now - 6.weeks,
    link: "https://www.disneyplus.com/video/390aca41-b784-473e-b571-401d230c6ecd",
    availability: [true, false].sample
  }
])

Muppet.create([{
    name: "Miss Piggy",
    fur_color: "pink",
    personality: "spicy",
    partner: "Kermit",
    image: "https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2017%2F06%2Ffwx-partner-instyle-miss-piggy-main.jpg&q=85", 
    show: Show.all.sample,
  },
  {
    name: "Kermit",
    fur_color: "green",
    personality: "passive until pushed",
    partner: "Miss Piggy",
    image: "https://pyxis.nymag.com/v1/imgs/e64/774/1b922b88c0593489765b1700ce231c2047-12-kermit-infuencer.rvertical.w1200.jpg", 
    show: Show.all.sample,
  },
  {
    name: "Rizzo the Rat",
    fur_color: "brown",
    personality: "selfish but adorable",
    partner: "Yolanda",
    image: "https://static.wikia.nocookie.net/muppet/images/6/6d/RizzoTheRat.jpg/revision/latest?cb=20120122041729", 
    show: Show.all.sample,
  }
  ])




