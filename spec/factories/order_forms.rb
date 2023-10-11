FactoryBot.define do
  factory :order_form do
    customer { "MyString" }
    email { "MyString" }
    comment { "MyText" }
    total { 1.5 }
  end
end
