source "https://rubygems.org"

ruby "2.3.0"

gem "autoprefixer-rails"
gem "bootstrap-sass"
gem 'bootstrap-wysihtml5-rails', github: 'nerian/bootstrap-wysihtml5-rails'
gem "bourbon", "~> 4.2.0"
gem "coffee-rails", "~> 4.1.0"
gem "delayed_job_active_record"
gem "email_validator"
gem "flutie"
gem "high_voltage"
gem "jquery-rails"
gem "neat", "~> 1.7.0"
gem "newrelic_rpm", ">= 3.9.8"
gem "normalize-rails", "~> 3.0.0"
gem "pg"
gem "puma"
gem "rack-canonical-host"
gem "rails", "~> 4.2.0"
gem "recipient_interceptor"
gem "responders", "~> 2.1.0"
gem "resque"
gem "resque-scheduler"
gem "sass-rails", "~> 5.0"
gem "simple_form"
gem "title"
gem "uglifier"


group :development do
  gem "quiet_assets"
  gem "refills"
  gem "spring"
  gem "spring-commands-rspec"
  gem "web-console"
end

group :development, :test do
  gem "awesome_print"
  gem "bundler-audit", require: false
  gem "byebug"
  gem "dotenv-rails"
  gem "factory_girl_rails"
  gem "i18n-tasks"
  gem "pry-rails"
  gem "rspec-rails", "~> 3.3.0"
end

group :test do
  gem "capybara-webkit"
  gem "database_cleaner"
  gem "formulaic"
  gem "launchy"
  gem "shoulda-matchers"
  gem "simplecov", require: false
  gem "timecop"
  gem "webmock"
end
group :staging do
  # TODO Remove before deploy
  gem "dotenv-rails"
end

group :staging, :production do
  gem "rails_stdout_logging"
  gem "rack-timeout"
end

group :production do 
  gem "airbrake"
end
