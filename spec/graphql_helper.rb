module GraphqlHelper
  def gql(query)
    body = { query: query }

    post '/graphql', params: body

    test = JSON.parse(response.body, symbolize_names: true)
  end
end