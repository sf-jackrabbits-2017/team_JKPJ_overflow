20.times do
  user = User.create!(username: Faker::Name.first_name,
  password: Faker::StarWars.planet,
  email: Faker::Internet.email)


end
