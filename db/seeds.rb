require 'faker'
include Faker

5.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

users = User.all

10.times do
  Item.create!(
   user: users.sample,
   name: Faker::Lorem.words(4, true)
  )
end


puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
