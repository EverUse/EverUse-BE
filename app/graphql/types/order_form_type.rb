module Types
  class OrderFormType < Types::BaseObject
    field :id, ID, null: false
    field :customer, String, null: false
    field :email, String, null: false
    field :comment, String, null: true
    field :total, Float, null: false
    field :products, String, null: false 
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
