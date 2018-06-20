class Ingredient < ApplicationRecord
  has_many :recipehasingredients
  has_and_belongs_to_many :recipes
  validates :name, presence: true
end
