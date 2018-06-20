class AddDeliveryinfoToOrder < ActiveRecord::Migration[5.1]
  def change
    add_reference :orders, :deliveryinfo, foreign_key: true
  end
end
