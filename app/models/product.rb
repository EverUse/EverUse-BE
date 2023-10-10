class Product < ApplicationRecord
  serialize :products, JSON
end
