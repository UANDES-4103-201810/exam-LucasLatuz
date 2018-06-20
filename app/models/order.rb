class Order < ApplicationRecord
  has_one :customer
  has_one :paymentmethod
  has_many :orderhaspizzas
  has_one :deliveryinfo
  validates :paymentmethod, presence: true
  validates :deliveryinfo, presence: true
  validates :customer, presence: true
  validates :orderhaspizzas, presence: true
end
