Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins ['https://the-ramen-critique.herokuapp.com', 'localhost:3000']
    resource '*',
      headers: :any,
      methods: [:get, :post, :delete, :create],
      credentials: true
  end
end