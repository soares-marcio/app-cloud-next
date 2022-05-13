50.times{
  User.create(
    name: Faker::Name.name,
    username: Faker::Internet.username,
    email: Faker::Internet.email
  )
}