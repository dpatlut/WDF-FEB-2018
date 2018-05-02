# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Dog.create(name:'fluffly', age:90, breed:'german shepard', owner_id:1)
Dog.create(name:'rabbit', age:12, breed:'collie', owner_id:2)

Owner.create(name: 'David', age: 60, phonenumber:"917")
Owner.create(name: 'Kay', age: 99, phonenumber:"907")

DoggyTreat.create(brand: 'purina', price: 5, owner_id: 1)
DoggyTreat.create(brand: 'greenies', price: 90, owner_id: 2)