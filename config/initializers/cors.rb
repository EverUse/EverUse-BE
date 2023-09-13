# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "localhost:3000"


    resource "/graphql",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end

  allow do
    origins "https://everuse-fe-c2ebec288f10.herokuapp.com"


    resource "/graphql",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end

  allow do
    origins "https://www.everuseproducts.com"


    resource "/graphql",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end

  allow do
    origins "https://everuseproducts.com"


    resource "/graphql",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
