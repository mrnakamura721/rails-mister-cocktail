# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

puts "Destroying all ingredients..."
Ingredient.destroy_all
puts "Creating ingredients..."

url = "https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list"
ingredients = JSON.parse(open(url).read)
ingredient_hash = ingredients['drinks']

ingredient_hash.each do |ingredient|
  Ingredient.create!(name: ingredient["strIngredient1"])
end
puts "Completed adding ingredients"

puts "Destroying all cocktails..."
Cocktail.destroy_all
puts "Creating cocktails..."
Cocktail.create!(name: "Bloody Mary")
Cocktail.create!(name: "Vodka Soda")
Cocktail.create!(name: "Moscow Mule")
Cocktail.create!(name: "Gin and Tonic")
Cocktail.create!(name: "Whisky Sour")
Cocktail.create!(name: "Tequila Sunrise")
Cocktail.create!(name: "Sake Bomb")
Cocktail.create!(name: "Old Fashion")
Cocktail.create!(name: "White Russian")
Cocktail.create!(name: "Margarita")
Cocktail.create!(name: "Pina Colada")
Cocktail.create!(name: "Rum and Coke")
puts "Completed adding cocktails"

