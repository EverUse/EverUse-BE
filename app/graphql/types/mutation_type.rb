module Types
  class MutationType < Types::BaseObject
    field :create_order_form, mutation: Mutations::CreateOrderForm
  end
end
