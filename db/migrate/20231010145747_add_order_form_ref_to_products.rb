class AddOrderFormRefToProducts < ActiveRecord::Migration[7.0]
  def change
    add_reference :products, :order_form, foreign_key: true, null: true
  end
end
