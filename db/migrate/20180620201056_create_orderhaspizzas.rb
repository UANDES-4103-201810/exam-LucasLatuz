class CreateOrderhaspizzas < ActiveRecord::Migration[5.1]
  def change
    create_table :orderhaspizzas do |t|
      t.references :order, foreign_key: true
      t.references :pizzas, foreign_key: true

      t.timestamps
    end
  end
end
