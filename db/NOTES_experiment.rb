Medium.create name: "Photography"
Medium.create name: "Acrylic"
Medium.create name: "Watercolors"
Medium.create name: "Mixed Media"
Medium.create name: "Textiles"
Medium.create name: "Sculpture"
Medium.create name: "Glass"
Medium.create name: "Film"
Medium.create name: "Drawing"
Medium.create name: "Ceramics"
Medium.create name: "Printmaking"
Medium.create name: "Collage"
Medium.create name: "Digital"
Medium.create name: "Woodworking"

puts "Created media 🎨"

Location.create

20.times do
Location.create address: Faker::Address.state  
print '🌆'
end

ages = ["25 and under",
        "26 to 40",
        "41 to 59",
        "60 to 89",
        "90+"
]

facebook = [
  "http://www.facebook.com/hebrubrantley",
  "http://www.facebook.com/mayafreelon",
  "http://www.facebook.com/kehindewiley",
  "http://www.facebook.com/miyabailey",
]

tumblr = [
"http://www.tumblr.com/cityofink",
"http://www.tumblr.com/andrewthomasclifton",
"http://www.tumblr.com/artistsdepot"
]

instagram = [
"http://www.instagram.com/andrewthomasclifton",
"http://www.instagram.com/suzybuttons",
"http://www.instagram.com/baia"
]

twitter = [
"http://www.twitter.com/baia"
"http://www.twitter.com/andrewthomasclifton"
]
