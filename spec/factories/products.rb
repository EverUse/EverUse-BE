FactoryBot.define do
  factory :product do
    name { Faker::Commerce.product_name }
    category { Faker::Commerce.department }
    image { "MyString" }
    description { "MyString" }
    price { 1.5 }
    size { "MyString" }
    color { "moss" }
    quantity { 1 }
  end
end
