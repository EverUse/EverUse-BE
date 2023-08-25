class ReplaceProductType < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :productType, :category
  end
end
