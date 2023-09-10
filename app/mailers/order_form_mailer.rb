class OrderFormMailer < ApplicationMailer
  default from: 'everusecustomerservice@gmail.com'

  def confirmation_email(customer, email, comment, total, products)
    @name = customer
    @products = products
    @total = sprintf('%.2f', total)
    @comment = comment

    mail(to: email,
        #  bcc: 'everusecustomerservice@gmail.com',
        subject: 'Order Confirmation')
  end
end
