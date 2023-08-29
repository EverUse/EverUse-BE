class OrderFormMailer < ApplicationMailer
  default from: 'everusecustomerservice@gmail.com'

  def confirmation_email(customer, email, comment, total, products)
    @name = customer
    mail(to: email,
        subject: 'Order Confirmation')
  end
end
