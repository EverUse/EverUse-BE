module Types
  class QueryType < Types::BaseObject
    # Add `node(id: ID!) and `nodes(ids: [ID!]!)`
    include GraphQL::Types::Relay::HasNodeField
    include GraphQL::Types::Relay::HasNodesField

    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    # TODO: remove me
    field :products, [Types::ProductType], null: false,
      description: "An example field added by the generator"
    def products
      Product.all
    end

    field :product, [Types::ProductType], null: false do
      argument :category, String, required: true
    end

    def product(category:)
      Product.where(category: category)
    end
  end
end