Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    # TODO: change URL settings
    origins ["localhost:3030", ENV["CLIENT_BASE_URL"]].compact

    resource "*",
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
