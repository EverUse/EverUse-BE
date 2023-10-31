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

        expect(product_data.count).to eq(2)
        expect(product_data.first[:name]).to eq(@product1.name)
        expect(product_data.first).to have_key(:id)
        expect(product_data.first[:id]).to be_a(String)
        expect(product_data.first).to have_key(:name)
        expect(product_data.first[:name]).to be_a(String)
        expect(product_data.first).to have_key(:category)
        expect(product_data.first[:category]).to be_a(String)
        expect(product_data.first).to have_key(:image)
        expect(product_data.first[:image]).to be_a(String)
        expect(product_data.first).to have_key(:description)
        expect(product_data.first[:description]).to be_a(String)
        expect(product_data.first).to have_key(:color)
        expect(product_data.first[:color]).to be_a(String)
        expect(product_data.first).to have_key(:quantity)
        expect(product_data.first[:quantity]).to be_an(Integer)
        expect(product_data.first).to have_key(:size)
        expect(product_data.first[:size]).to be_a(String)
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