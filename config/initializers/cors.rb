Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    allowed_origins = ["localhost:3030", ENV["CLIENT_BASE_URL"]].compact
    origins allowed_origins

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
