puts "Creating superstars and users..."

3.times do
  user = User.create!(
    email: Faker::Internet.email,
    password: Faker::Name.name,
    username: Faker::Internet.username
  )
  puts "Creating users with id #{user.id}"
end

3.times do
  superstar = Superstar.create!(
    name: Faker::Movies::StarWars.character,
    event_type: ["wedding", "party", "graduation", "honeymoons"].sample,
    availabilities: [true, false].sample,
    user_id: User.all.sample.id
  )
  puts "Creating superstars with id #{superstar.id}"
end

puts "Finished!"
