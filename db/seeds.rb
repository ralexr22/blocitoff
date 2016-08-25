require 'faker'
include Faker

1.times do
  User.create!(
    email: Faker::Internet.email,
    password: Faker::Internet.password
    )
end

10.times do
  Item.create!(
   user: @user_id,
   name: Faker::Lorem.words(4, true)
  )
end


puts "Seed finished"
puts "#{User.count} created"
puts "#{Item.count} items created"
