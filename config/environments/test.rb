# config/environments/test.rb

Rails.application.configure do
  # Disable eager loading and reloading
  config.eager_load = false
  config.enable_reloading = false

  # Disable file server and caching
  config.public_file_server.enabled = false
  config.cache_store = :null_store

  # Disable other test-specific settings
  config.action_mailer.delivery_method = :test
  config.active_storage.service = :test

  # Disable Action Controller settings
  config.action_controller.allow_forgery_protection = false
  config.action_dispatch.show_exceptions = :rescuable
  config.consider_all_requests_local = true

  # Default URL for mailers (use a valid URL if you plan to use emails)
  config.action_mailer.default_url_options = { host: "example.com" }
end
