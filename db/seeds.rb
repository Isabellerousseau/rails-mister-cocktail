# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'json'
require 'open-uri'

url = 'https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
user_serialized = open(url).read
records = JSON.parse(user_serialized)
ingredients = records["drinks"]

ingredients.each do |ingredient|
  name = ingredient["strIngredient1"]
  Ingredient.create!(name: name)
end
puts "You have #{Ingredient.count} ingredients"
