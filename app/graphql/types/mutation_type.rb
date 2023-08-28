module Types
  class MutationType < Types::BaseObject
    field :create_order_form, mutation: Mutation::CreateOrderForm
      description: "An example field added by the generator"
    def test_field
      "Hello World"
    end
  end
end
