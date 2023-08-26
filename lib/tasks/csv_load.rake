require 'csv'

namespace :import do
  desc "Import data from CSV file"
  task :products => :environment do
    Dir.glob('db/data/products.csv').each do |file| # Loop over every CSV file in the specified directory that starts with 'state'
      CSV.foreach(file, headers: true) do |row| # Open each file and parse with CSV
        product = Product.new
        product.name = row['name']
        product.category = row['category']
        product.image = row['image']
        product.description = row['description']
        product.price = row['price']
        product.size = row['size']
        product.color = row['color']
        product.quantity = row['quantity']
        product.save!
      end
    end
  end
end