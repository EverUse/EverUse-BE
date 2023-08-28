module Mutations
  class CreateOrderForm < BaseMutation
    argument :customer, String, required: true
    argument :email, String, required: true
    argument :comment, String, required: false
    argument :total, Float, required: true
    argument :products, String, required: true

    field :message, String, null: false

    def resolve(customer:, email:, comment:, total:, products:)
      OrderFormMailer.confirmation_email(customer, email, comment, total, products).deliver_now

      { message: "submission successful"}
    end
  end
end