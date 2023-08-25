# frozen_string_literal: true

module Types
  class ProductType < Types::BaseObject
    field :id, ID, null: false
    field :name, String
    field :category, String
    field :image, String
    field :description, String
    field :price, Float
    field :size, String
    field :color, String
    field :quantity, Integer
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
