require 'rails_helper'

module Queries
  RSpec.describe Product, type: :request do
    describe "Product" do
      before(:each) do
        @product1 = create(:product, name: "bracelet")
        @product2 = create(:product, name: "bracelet")
        @product3 = create(:product, name: "jewelry")
      end
      it "returns individual product" do
        product_data = query_product
# require 'pry'; binding.pry
        expect(product_data.count).to eq(2)
        expect(product_data.first[:name]).to eq(@product1.name)

      end
    end

    private
    def query_product
      response = gql <<-GQL 
          query {
            product(name: "bracelet") {
                id
                name
                category
                image
                description
                color
                quantity
                size
            }
        }
      GQL

      response.dig(:data, :product)
    end
  end
end