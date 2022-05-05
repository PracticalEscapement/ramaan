Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins 'https://the-ramen-critique.herokuapp.com/'
    resource '*',
      headers: :any,
      methods: [:get, :post, :delete, :create],
      credentials: true
  end
end