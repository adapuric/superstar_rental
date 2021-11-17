puts "Cleaning database..."
Superstar.destroy_all
User.destroy_all
puts "Creating superstars and users..."

10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Name.name,
    username: Faker::Internet.username
  )
  puts "Creating users with id #{user.id}"
end

# 10.times do
#   superstar = Superstar.create!(
#     name: Faker::Movies::StarWars.character,
#     event_type: ["wedding", "party", "graduation", "honeymoon"].sample,
#     availabilities: [true, false].sample,
#     user_id: User.all.sample.id,
#     bio: "My speciality is to....",
#     price: [500, 600, 700, 1000].sample,
#     region: ["North America", "South America", "Europe", "Asia", "Australia"].sample
#   )
#   puts "Creating superstars with id #{superstar.id}"
# end
puts "Creating Superstar"
elon = Superstar.create!(
  name: "Elon Musk",
  event_type: "honeymoon",
  availabilities: true,
  image_url: "https://image.cnbcfm.com/api/v1/image/106926992-1628885077267-elon.jpg?v=1635173166&w=740&h=416",
  user_id: User.all.sample.id,
  bio: "My speciality is to make money",
  price: 1000,
  region: "North America",
)

kimk = Superstar.create!(
  name: "Kim Kardashian",
  event_type: "wedding",
  availabilities: true,
  image_url: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0MTU0MTcyNDI0Mzk3OTg0/kim-kardashian-signs-copies-of-her-new-book-photo-by-michael-loccisanogetty-imagesjpg-square.jpg",
  user_id: User.all.sample.id,
  bio: "My speciality is having a huge backfront",
  price: 600,
  region: "Asia",
)

chalamet = Superstar.create!(
  name: "Timothee Chalamet",
  event_type: "graduation",
  availabilities: true,
  image_url: "https://imgix.bustle.com/uploads/getty/2021/10/20/f29a913e-3be4-400c-9689-e51af3521887-getty-1347322232.jpg?w=800&fit=crop&crop=faces&auto=format%2Ccompress&q=50&dpr=2",
  user_id: User.all.sample.id,
  bio: "My speciality is to be charming",
  price: 1000,
  region: "Europe",
)

dicaprio = Superstar.create!(
  name: "Young Leonardo DiCaprio",
  event_type: "party",
  availabilities: true,
  image_url: "https://i.redd.it/hh5aabjslbgz.jpg",
  user_id: User.all.sample.id,
  bio: "My speciality is to look young",
  price: 1000,
  region: "Europe",
)

depp = Superstar.create!(
  name: "Young Johny Depp",
  event_type: "honeymoon",
  availabilities: true,
  image_url: "https://www.the-sun.com/wp-content/uploads/sites/6/2020/04/Johnny-Depp-89-2378-24jpg-JS449176197.jpg?strip=all&w=641",
  user_id: User.all.sample.id,
  bio: "My speciality is to smile",
  price: 1000,
  region: "North America",
)

kelly = Superstar.create!(
  name: "Machine Gun Kelly",
  event_type: "wedding",
  availabilities: true,
  image_url: "https://fstvls.s3.amazonaws.com/87/86705.jpg",
  user_id: User.all.sample.id,
  bio: "My speciality is looking good",
  price: 1000,
  region: "Australia",
)

davidson = Superstar.create!(
  name: "Pete Davidson",
  event_type: "graduation",
  availabilities: true,
  image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/0/0a/Pete_Davidson_in_2015_%2817073107891%29.jpg/440px-Pete_Davidson_in_2015_%2817073107891%29.jpg",
  user_id: User.all.sample.id,
  bio: "My speciality is to make people lough",
  price: 1000,
  region: "South America",
)

rocky = Superstar.create!(
  name: "ASAP",
  event_type: "graduation",
  availabilities: true,
  image_url: "https://www.biography.com/.image/ar_1:1%2Cc_fill%2Ccs_srgb%2Cg_face%2Cq_auto:good%2Cw_300/MTU0MDQyNzUyMzgyODA1NzU1/aap-rocky-from-the-film-monster-poses-for-a-portrait-in-the-youtube-x-getty-images-portrait-studio-at-2018-sundance-film-festival-on-january-22-2018-in-park-city-utah-photo-by-robby-klein_getty-images.jpg",
  user_id: User.all.sample.id,
  bio: "My speciality is to smile",
  price: 1000,
  region: "Europe",
)

liam = Superstar.create!(
  name: "Liam Hemsworth",
  event_type: "party",
  availabilities: true,
  image_url: "https://tbivision.com/files/2019/07/Liam-Hemsworth.jpg",
  user_id: User.all.sample.id,
  bio: "My speciality is to smile",
  price: 1000,
  region: "Europe",
)

puts "Finished!"
