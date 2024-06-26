Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins '*'
    resource(
      '*',
      headers: :any,
      expose: %w[access-token expiry token-type Authorization],
      methods: %i[get patch put delete post options show]
    )
  end
end
