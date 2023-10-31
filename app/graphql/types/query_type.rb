module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField


    field :products, [Types::ProductType], null: false,
      description: "Returns all products"
    def products
      Product.all
    end

    field :product, [Types::ProductType], null: false do
      argument :name, String, required: true
    end

    def product(name:)
      Product.where(name: name)
    end

    field :order_forms, [Types::OrderFormType], null: false
    def order_forms
      OrderForm.all
    end
  end
end
