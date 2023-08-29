module Types
  class ProductInputType < Types::BaseInputObject
    argument :name, String, required: true
    argument :category, String, required: false
    argument :image, String, required: false
    argument :description, String, required: false
    argument :price, Float, required: false
    argument :size, String, required: true
    argument :color, String, required: true
    argument :quantity, Integer, required: true
  end
end