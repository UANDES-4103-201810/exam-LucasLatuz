class CreateDeliveryinfos < ActiveRecord::Migration[5.1]
  def change
    create_table :deliveryinfos do |t|
      t.string :line1
      t.string :line2
      t.string :phone

      t.timestamps
    end
  end

end
