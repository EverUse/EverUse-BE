require 'rails_helper'

module Mutations
  RSpec.describe CreateOrderForm, type: :request do
    describe "resolve" do
      xit "returns a successful submisson response", :vcr do
        response = mutation
        expect(response).to be_a(Hash)
        expect(response[:createOrderForm]).to have_key(:message)
        expect(response[:createOrderForm][:message]).to eq("Hello bill jo, your order submission was successful! An order request confirmation will be sent to billjo@email.com shortly. If you don't receive that email please reach out to us at contact@everuseproducts.com")
      end
    end

    private
    def mutation
      response = gql <<-GQL
      mutation CreateOrderForm {
        createOrderForm(
            input: {customer: "bill jo", email: "billjo@email.com", comment: "hi please work", total: 130.90, products: [
                        {
                            name: "bracelet",
                            color: "moss",
                            size: "small",
                            quantity: 2
                        }]
                      })
            {
              message
            }
            }
            GQL
        response.dig(:data)
    end
  end
end