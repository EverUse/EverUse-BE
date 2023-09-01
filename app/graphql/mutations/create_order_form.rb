module Mutations
  class CreateOrderForm < BaseMutation
    argument :customer, String, required: true
    argument :email, String, required: true
    argument :comment, String, required: false
    argument :total, Float, required: true
    argument :products, [Types::ProductInputType], required: true

    field :message, String, null: false

    def resolve(customer:, email:, comment:, total:, products:)
      OrderFormMailer.confirmation_email(customer, email, comment, total, products).deliver_now

      { message: "Hello #{customer}, your order submission was successful! An order request confirmation will be sent to #{email} shortly. If you don't receive that email please reach out to us at contact@everuseproducts.com"}
    end
  end
end