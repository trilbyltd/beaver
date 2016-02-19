require_relative "production"
# TODO Remove before deploy
require 'dotenv'
Dotenv.load

Mail.register_interceptor(
  RecipientInterceptor.new(ENV.fetch("EMAIL_RECIPIENTS"))
)

Rails.application.configure do
  config.cache_classes = true
  config.consider_all_requests_local = false
  config.action_controller.perform_caching = true
  config.serve_static_assets = true
  config.static_cache_control = "public, max-age=3600"
  config.assets.compress = false
  config.assets.compile = false
  config.assets.digest = true
  config.action_controller.asset_host = ENV.fetch("ASSET_HOST", ENV.fetch("APPLICATION_HOST"))
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.smtp_settings = SMTP_SETTINGS
  config.action_mailer.default_url_options = { host: ENV.fetch("APPLICATION_HOST") }
end
