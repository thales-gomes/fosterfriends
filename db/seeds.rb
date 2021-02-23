# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Pet.destroy_all
User.destroy_all
Shelter.destroy_all

jerry = User.create!(
  first_name: "Jerry", 
  last_name: "Deren", 
  email: "jerryderry@aol.com", 
  user_type: "caretaker", 
  address: "31 Taco Bell", 
  city: "Lisbon", 
  zip_code: 10965, 
  password: "123456", 
  birth_date: Date.today
)

  owner = User.create!(
    first_name: "John", 
    last_name: "Jones", 
    email: "hallal@aol.com", 
    user_type: "owner", 
    address: "14 Brighton", 
    city: "Lisbon", 
    zip_code: 10965, 
    password: "123456", 
    birth_date: Date.today
  )

puts "Creating shelter..."

shelter_one = Shelter.create!(
  name: "shelter one",
  user: User.last
)


puts "Creating pets..."

jerry_the_dog = Pet.create!(
    name: Faker::Creature::Dog.name,
    age: Faker::Number.between(from: 1, to: 10),
    shelter: Shelter.first,
    animal_type: Faker::Creature::Animal.name,
    price_per_day: 55,
    gender: Faker::Creature::Dog.gender,
    breed: Faker::Creature::Dog.breed,
    description: Faker::Creature::Dog.meme_phrase
)

giura_the_dog = Pet.create!(
  name: Faker::Creature::Dog.name,
  age: Faker::Number.between(from: 1, to: 10),
  shelter: Shelter.first,
  animal_type: Faker::Creature::Animal.name,
  price_per_day: 100,
  gender: Faker::Creature::Dog.gender,
  breed: Faker::Creature::Dog.breed,
  description: Faker::Creature::Dog.meme_phrase
)


puts "Finished!"