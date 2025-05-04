Rails.application.config.middleware.insert_before 0, Rack::Cors do
    allow do
      origins '*'  # Replace with your React app URL in production (e.g., 'https://my-react-app.com')
  
      resource '*',
               headers: :any,
               methods: [:get, :post, :put, :patch, :delete, :options, :head]
    end
  end
  