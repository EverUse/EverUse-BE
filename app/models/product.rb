class Product < ApplicationRecord
  serialize :products, JSON

  validates_presence_of :name
  validates_presence_of :category
  validates_presence_of :description
  validates_presence_of :image
  validates_presence_of :price
  validates_presence_of :size
  validates_presence_of :color
end
