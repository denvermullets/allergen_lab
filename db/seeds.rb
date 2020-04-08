# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(name: "Ryan", bio: "I like long walks on the beach")
user2 = User.create(name: "Mac", bio: "Well, thru God all things are possible. So jot that down.")
user3 = User.create(name: "Dennis", bio: "They would never say no, because of the implication.")

measurement1 = MeasurementUnit.create(desc: "cup(s)")
measurement2 = MeasurementUnit.create(desc: "tbp(s)")
measurement3 = MeasurementUnit.create(desc: "tsp(s)")
measurement4 = MeasurementUnit.create(desc: "lb.")
measurement5 = MeasurementUnit.create(desc: "oz.")

measurement_qty1 = MeasurementQuantity.create(quantity: 1)
measurement_qty2 = MeasurementQuantity.create(quantity: 2)
measurement_qty3 = MeasurementQuantity.create(quantity: 3)
measurement_qty4 = MeasurementQuantity.create(quantity: 4)
measurement_qty5 = MeasurementQuantity.create(quantity: 5)

ingredients1 = Ingredient.create(name: "broccoli")
ingredients2 = Ingredient.create(name: "brown sugar")
ingredients3 = Ingredient.create(name: "sugar")
ingredients4 = Ingredient.create(name: "flour")
ingredients5 = Ingredient.create(name: "ground beef")
ingredients6 = Ingredient.create(name: "garlic powder")
ingredients7 = Ingredient.create(name: "cinnamon")
ingredients8 = Ingredient.create(name: "eggs")

recipe1 = Recipe.create(name: "French Toast", description: "This is how you make frenchie toasty", user_id: user1.id)
recipe2 = Recipe.create(name: "Scrambled Eggs", description: "This is how you make Scrambled Eggs", user_id: user1.id)
recipe3 = Recipe.create(name: "Hamburgers", description: "This is how you make Hamburgers", user_id: user1.id)
recipe4 = Recipe.create(name: "Spaghet", description: "This is how you make Spaghet with detailed instructions", user_id: user2.id)
recipe5 = Recipe.create(name: "Lasagna", description: "This is how you make lasagna", user_id: user2.id)
recipe6 = Recipe.create(name: "Garlic Eggs", description: "This is how you make eggies.", user_id: user3.id)

recipe_ing_1 = RecipeIngredient.create(recipe_id: recipe1.id, ingredient_id: ingredients1.id, measurement_unit_id: measurement1.id, measurement_qty_id: measurement_qty1.id)
recipe_ing_2 = RecipeIngredient.create(recipe_id: recipe1.id, ingredient_id: ingredients2.id, measurement_unit_id: measurement2.id, measurement_qty_id: measurement_qty2.id)
recipe_ing_3 = RecipeIngredient.create(recipe_id: recipe1.id, ingredient_id: ingredients3.id, measurement_unit_id: measurement3.id, measurement_qty_id: measurement_qty3.id)
recipe_ing_5 = RecipeIngredient.create(recipe_id: recipe2.id, ingredient_id: ingredients1.id, measurement_unit_id: measurement2.id, measurement_qty_id: measurement_qty2.id)
recipe_ing_4 = RecipeIngredient.create(recipe_id: recipe2.id, ingredient_id: ingredients8.id, measurement_unit_id: measurement3.id, measurement_qty_id: measurement_qty3.id)
recipe_ing_6 = RecipeIngredient.create(recipe_id: recipe3.id, ingredient_id: ingredients7.id, measurement_unit_id: measurement4.id, measurement_qty_id: measurement_qty4.id)
recipe_ing_7 = RecipeIngredient.create(recipe_id: recipe3.id, ingredient_id: ingredients6.id, measurement_unit_id: measurement1.id, measurement_qty_id: measurement_qty4.id)
recipe_ing_8 = RecipeIngredient.create(recipe_id: recipe3.id, ingredient_id: ingredients4.id, measurement_unit_id: measurement2.id, measurement_qty_id: measurement_qty3.id)
recipe_ing_9 = RecipeIngredient.create(recipe_id: recipe3.id, ingredient_id: ingredients5.id, measurement_unit_id: measurement3.id, measurement_qty_id: measurement_qty2.id)
recipe_ing_10 = RecipeIngredient.create(recipe_id: recipe4.id, ingredient_id: ingredients3.id, measurement_unit_id: measurement1.id, measurement_qty_id: measurement_qty1.id)
recipe_ing_11 = RecipeIngredient.create(recipe_id: recipe4.id, ingredient_id: ingredients2.id, measurement_unit_id: measurement2.id, measurement_qty_id: measurement_qty2.id)

allergen1 = Allergen.create(user_id: user1.id, ingredient_id: ingredients3.id)
allergen2 = Allergen.create(user_id: user1.id, ingredient_id: ingredients1.id)
allergen3 = Allergen.create(user_id: user1.id, ingredient_id: ingredients5.id)
allergen4 = Allergen.create(user_id: user2.id, ingredient_id: ingredients3.id)
allergen5 = Allergen.create(user_id: user3.id, ingredient_id: ingredients3.id)
allergen6 = Allergen.create(user_id: user3.id, ingredient_id: ingredients1.id)
allergen7 = Allergen.create(user_id: user3.id, ingredient_id: ingredients2.id)
allergen8 = Allergen.create(user_id: user1.id, ingredient_id: ingredients2.id)
allergen9 = Allergen.create(user_id: user1.id, ingredient_id: ingredients7.id)
