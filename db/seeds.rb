# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

profile_list = [
  [ "Oleg", 32, 233 ],
  [ "Andriy", 32, 233 ],
  [ "Oleg", 32, 233 ]
]

ware_list = []
ware_sales = []



100.times do
  name = Faker::Name.first_name
  age = Faker::Number.between(1,4)
  telephone = Faker::Number.between(1,4)
  profile_list << [ name, age, telephone]
end

5.times do
  name = Faker::Name.last_name
  country = Faker::Name.last_name
  price = Faker::Number.between(1,4)
  ware_list << [ name, country, price ]
end

1.times do
  profile_id = 1
  ware_id = 1
  amount = Faker::Number.between(1,4)
  ware_list << [ profile_id, ware_id, amount ]
end



profile_list.each do |name, age, telephone|
  Profile.create(name: name, age: age, telephone: telephone)
end

ware_list.each do |name, country, price|
  Ware.create(name: name, country: country, price: price) 
end

ware_sales.each do |profile_id, ware_id, amount|
  WareSale.create(profile_id: profile_id, ware_id: ware_id, amount: amount) 
end
