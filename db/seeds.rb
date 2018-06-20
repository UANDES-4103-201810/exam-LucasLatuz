# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ingredient_1 = Ingredient.create(name: 'Mozzarella')
ingredient_2 = Ingredient.create(name: 'Tomato')
ingredient_3 = Ingredient.create(name: 'Pepperoni')
ingredient_4 = Ingredient.create(name: 'Olives')
ingredient_5 = Ingredient.create(name: 'Onion')
ingredient_6 = Ingredient.create(name: 'Artichokes')
ingredient_7 = Ingredient.create(name: 'Mushrooms')
ingredient_8 = Ingredient.create(name: 'Ham')
ingredient_9 = Ingredient.create(name: 'Shrimp')

crust_1 = Crust.create(name: 'Regular', price: 100)
crust_2 = Crust.create(name: 'Thin', price: 200)

recipe_1 = Recipe.create(name: 'Pichona', price: 300)
recipe_2 = Recipe.create(name: 'Gorreona', price: 270)
recipe_3 = Recipe.create(name: 'Halconezca', price: 410)
recipe_4 = Recipe.create(name: 'Zorzal', price: 320)
recipe_5 = Recipe.create(name: 'Golondrina', price: 380)
recipe_6 = Recipe.create(name: 'Palomera', price: 10)

paymentmethod_1 = Paymentmethod.create(name: 'Cash')
paymentmethod_2 = Paymentmethod.create(name: 'Credit Card')

recipehasingredients_11 = Recipehasingredient.create(recipe: recipe_1, ingredient: ingredient_1)
recipehasingredients_12 = Recipehasingredient.create(recipe: recipe_1, ingredient: ingredient_2)
recipehasingredients_21 = Recipehasingredient.create(recipe: recipe_2, ingredient: ingredient_3)
recipehasingredients_22 = Recipehasingredient.create(recipe: recipe_2, ingredient: ingredient_4)
recipehasingredients_31 = Recipehasingredient.create(recipe: recipe_3, ingredient: ingredient_5)
recipehasingredients_32 = Recipehasingredient.create(recipe: recipe_3, ingredient: ingredient_6)
recipehasingredients_41 = Recipehasingredient.create(recipe: recipe_4, ingredient: ingredient_7)
recipehasingredients_42 = Recipehasingredient.create(recipe: recipe_4, ingredient: ingredient_8)
recipehasingredients_51 = Recipehasingredient.create(recipe: recipe_5, ingredient: ingredient_9)
recipehasingredients_52 = Recipehasingredient.create(recipe: recipe_5, ingredient: ingredient_2)
recipehasingredients_61 = Recipehasingredient.create(recipe: recipe_6, ingredient: ingredient_4)
recipehasingredients_62 = Recipehasingredient.create(recipe: recipe_6, ingredient: ingredient_8)

