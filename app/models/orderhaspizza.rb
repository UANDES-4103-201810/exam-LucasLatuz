class Orderhaspizza < ApplicationRecord
  belongs_to :order
  belongs_to :pizzas
end
