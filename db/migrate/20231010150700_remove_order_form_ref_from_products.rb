class RemoveOrderFormRefFromProducts < ActiveRecord::Migration[7.0]
  def change
    remove_reference :products, :order_form, index: true, foreign_key: true
  end
end
