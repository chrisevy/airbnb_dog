# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Dog.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogs'")
Dogsitter.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'dogsitters'")
Stroll.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'strolls'")
City.destroy_all
ActiveRecord::Base.connection.execute("DELETE from sqlite_sequence where name = 'cities'")



City.create(city_name: "Paris")
City.create(city_name: "Bordeaux")
City.create(city_name: "Lyon")

10.times do |x|
  Dog.create(name: Faker::Name.first_name, city_id: rand(1..3)) # un rand entre 1 et 3 car j'ai créer 3 villes. 
  Dogsitter.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, city_id: rand(1..3)) 
  Stroll.create(dogsitter_id: rand(1..x), dog_id: rand(1..x)) #rand ici donne un ID aléatoir que ce soit aux dogsitters qu'aux chiens. 
end