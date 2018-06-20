class CreatePaymentmethods < ActiveRecord::Migration[5.1]
  def change
    create_table :paymentmethods do |t|
      t.string :name

      t.timestamps
    end
  end
end
