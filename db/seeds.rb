puts "Creating superstars and users..."

10.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Name.name,
    username: Faker::Internet.username
  )
  puts "Creating users with id #{user.id}"
end

10.times do
  superstar = Superstar.create!(
    name: Faker::Movies::StarWars.character,
    event_type: ["wedding", "party", "graduation", "honeymoons"].sample,
    availabilities: [true, false].sample,
    user_id: User.all.sample.id,
    bio: "My speciality is to....",
    price: [500, 600, 700, 1000].sample,
    region: ["North America", "South America", "Europe", "Asia", "Australia"].sample
  )
  puts "Creating superstars with id #{superstar.id}"
end

puts "Finished!"
