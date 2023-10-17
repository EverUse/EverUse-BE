require "rails_helper"

RSpec.describe OrderFormMailer, type: :mailer do
  describe "confirmation_email" do
    before(:each) do
      @product1 = create(:product, name: "bracelet")
      @customer = "Alex"
      @email = "test@email.com"
      @comment = "hello"
      @total = 12.34
      @products = [@product1]

      @mail = OrderFormMailer.confirmation_email(@customer, @email, @comment, @total, @products)
    end

    it 'renders the subject' do
      expect(@mail.subject).to eq("Order Confirmation")
    end

    it 'renders the receiver email' do
      expect(@mail.to).to eq([@email])
    end

    it 'renders the sender email' do
      expect(@mail.from).to eq(['everusecustomerservice@gmail.com'])
    end
  end
end
