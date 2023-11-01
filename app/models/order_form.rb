class OrderForm < ApplicationRecord
  validates_presence_of :customer
  validates_presence_of :email
  validates_presence_of :total
  validates_presence_of :products
end
