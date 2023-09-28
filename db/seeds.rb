# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
chilean_cities = [
  "Chillan", "Rancagua", "Linares", "Los Angeles", "Curico", "Villarrica", "Osorno", "Concepcion", "Lota", "Cañete", "Viña del Mar", "Con con", "Cauquenes", "Constitucion"]

chilean_cities.each do |city_name|
  City.create(name: city_name)
end

10.times do 
  user = User.new(
    :email                 => Faker::Internet.email,
    :password              => "123456",
    :password_confirmation => "123456"
  )
  user.save!
end

user = User.new(
  :email                 => 'admin@admin.com',
  :password              => "123456",
  :password_confirmation => "123456",
  :role => 'admin'
)
user.save!

material = Material.new(  :name => 'Turbine')
material.save!
material = Material.new(  :name => 'Ignition System')
material.save!
material = Material.new(  :name => 'Fuel System')
material.save!