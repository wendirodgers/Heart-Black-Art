# create all the media
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

maya = Artist.create!(name: 'Maya Freelon', location: 'Durham, NC ', gender: 'Female', age: '90+', facebook: '', tumblr: '', instagram: 'https://www.instagram.com/mayafreelon/', twitter: '')
maya.media << Medium.find_by_name("Printmaking")
hebru = Artist.create!(name: 'Hebru Brantley', location: '', gender: 'Male', age: '38', facebook: '', tumblr: '', instagram: '', twitter: '')
hebru.media << Medium.find_by_name("Digital")
