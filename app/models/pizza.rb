class Pizza < ApplicationRecord
  has_one :crust
  has_one :recipe
  validates :crust, presence: true
  validates :recipe, presence: true
end
