# create all the media
Medium.create name: "Digital"
Medium.create name: "Mixed Media"
Medium.create name: "Acrylic"
Medium.create name: "Photography"
Medium.create name: "Watercolors"
Medium.create name: "Sculpture"


puts "Created media 🎨"

20.times do
  Location.create address: Faker::Address.state
  print '🌆'
end

ages = [
  "25 and under",
  "90+",
  "26 to 40"                                                                                                                                                                               
]

facebook = [
  "http://www.facebook.com/artist99",
  "http://www.facebook.com/jamesbobosmith",
  "http://www.facebook.com/gina",
]

tumblr = [
"http://www.tumblr.com/bbobsart",
"http://www.tumblr.com/asdf",
"http://www.tumblr.com/janet",
]

instagram = [
"http://wwww.instagram.com/username"
]

twitter = [
  "http://www.twitter.com/username",
]           

60.times do
  Artist.create({
    name: Faker::Name.name,
    media: Medium.all.sample(2),
    locations: Location.all.sample(1),
    age: ages.sample,
    gender: Faker::Demographic.sex,#=> "Female"
    facebook: facebook.sample,
    tumblr: tumblr.sample

  })
  print "😄"
end



