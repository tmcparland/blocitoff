# Create Users
10.times do
  User.create!(

  email:    Faker::Internet.email,
  password: Faker::Internet.password(8)
  )
end
users = User.all

# Create Items
100.times do
   Item.create!(
     name: Faker::Pokemon.name,
     user: users.sample
   )
 end
items = Item.all
 
 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Item.count} items created"