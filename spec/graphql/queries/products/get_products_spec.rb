require 'rails_helper'

module Queries
  RSpec.describe Product, type: :request do
    describe "Products" do
      before(:each) do
        create_list(:product, 10)
      end
      
      it 'returns all products' do
        products_data = query_products

        expect(products_data.count).to eq(10)
        expect(products_data.first).to include(
          :id             => be_present,
          :name           => be_present,
          :category       => be_present,
          :image          => be_present,
          :description    => be_present,
          :color          => be_present,
          :quantity       => be_present,
          :size           => be_present
        )
      end
    end

    private

    def query_products
      response = gql <<-GQL
          query {
            products {
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

      response.dig(:data, :products)
    end
  end
end