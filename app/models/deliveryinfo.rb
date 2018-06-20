class Deliveryinfo < ApplicationRecord
  validates :phone,presence: true,
            :numericality => true,
            :length => { :minimum => 8, :maximum => 10 }

  validates :linea1, presence: true
end
