class Recipe < ApplicationRecord
  has_and_belongs_to_many :ingredients
  has_many :recipehasingredients
  validates :name, presence: true
  validates :price, presence: true
end
