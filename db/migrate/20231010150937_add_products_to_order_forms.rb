class AddProductsToOrderForms < ActiveRecord::Migration[7.0]
  def change
    add_column :order_forms, :products, :text
  end
end
