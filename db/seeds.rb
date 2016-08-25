require 'faker'

1.times do
  User.create!(
    email: Faker::Internet.email,
    encrypted_password: Faker::Internet.password
    )
end

user = current_user

10.times do
  Item.create!(
   name: Faker::Lorem.words(true)
  )
end

puts "Seed finished"
puts "#{User.name} created"
puts "#{Item.count} items created"
