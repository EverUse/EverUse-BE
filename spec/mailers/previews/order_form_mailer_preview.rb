# Preview all emails at http://localhost:3000/rails/mailers/order_form_mailer
class OrderFormMailerPreview < ActionMailer::Preview
  def confirmation_email
    customer = "Jimmy Jurado"
    email = "jimmy@example.com"
    comment = "Sample comment"
    total = 100.50
    products = [{
      name: "bracelet",
      color: "moss",
      size: "small",
      quantity: 2
  },
  {
      name: "leash",
      color: "lime",
      size: "onesize",
      quantity: 1
  }      ]

    OrderFormMailer.confirmation_email(customer, email, comment, total, products)
  end
end
