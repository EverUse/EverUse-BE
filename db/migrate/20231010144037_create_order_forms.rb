class CreateOrderForms < ActiveRecord::Migration[7.0]
  def change
    create_table :order_forms do |t|
      t.string :customer
      t.string :email
      t.text :comment
      t.float :total

      t.timestamps
    end
  end
end
