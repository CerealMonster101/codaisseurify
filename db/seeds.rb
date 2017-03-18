Song.delete_all
Artist.delete_all

Artist1 = Artist.create!(name: "Kermit the Frog", image_url: "http://res.cloudinary.com/dmagtxb3l/image/upload/v1489851312/kermit_axyj1f.jpg")
Artist2 = Artist.create!(name: "Miss Piggy", image_url: "http://res.cloudinary.com/dmagtxb3l/image/upload/v1489851326/Muppets-Piggy_taliog.jpg")
Artist3 = Artist.create!(name: "Fozzie Bear", image_url: "http://res.cloudinary.com/dmagtxb3l/image/upload/v1489851327/Fozzie_bear_real_zep0no.png")
Artist4 = Artist.create!(name: "Gonzo", image_url: "http://res.cloudinary.com/dmagtxb3l/image/upload/v1489851326/gonzo_real_yhgwpa.jpg")
Artist5 = Artist.create!(name: "Beaker", image_url: "http://res.cloudinary.com/dmagtxb3l/image/upload/v1489851326/beaker_ql2xw1.jpg")

Song.create! ([
  {name: "Be a Cloud", artist: Artist1},
  {name: "Bein Green", artist: Artist1},
  {name: "Born to be Wild", artist: Artist1},
  {name: "Can-can", artist: Artist2 },
  {name: "Can't Help Lovin dat Man", artist: Artist2},
  {name: "Bein Fuzzy", artist: Artist3},
  {name: "All Together Now", artist: Artist3 },
  {name: "I'm My Own Grandpa", artist: Artist4 },
  {name: "I Hope Something Better Comes Along", artist: Artist4},
  {name: "Be a Clown", artist: Artist4},
  {name: "Bein Beaker", artist: Artist5},
  {name: "Mah na Mah na", artist:Artist5 },
  ])
