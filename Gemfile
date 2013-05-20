source 'https://rubygems.org'

ruby '2.0.0'
gem 'rails', '4.0.0.rc1'

# Multi-environment configuration
gem 'simpleconfig'

# API
# gem 'rabl'

gem 'thin'
gem 'unicorn'

gem 'pg'
gem 'devise', github: 'plataformatec/devise', branch: 'rails4'
gem 'protected_attributes'

# Security
# gem 'secure_headers'

# Miscellanea
gem 'haml'
gem 'http_accept_language'
gem 'jquery-rails'
gem 'nokogiri'
gem 'resque', require: 'resque/server' # Resque web interface
gem 'rest-client'
gem 'acts_as_tree', github: 'amerine/acts_as_tree'

# Assets
gem 'coffee-rails', '~> 4.0.0'
gem 'haml_assets'
gem 'handlebars_assets'
gem 'i18n-js'
gem 'jquery-turbolinks'
gem 'less-rails'
gem 'sass-rails', '~> 4.0.0.rc1'
gem 'therubyracer'
gem 'turbolinks'
gem 'twitter-bootstrap-rails', github: 'diowa/twitter-bootstrap-rails', branch: 'fontawesome-3.1.1'
gem 'uglifier', '>= 1.3.0'

group :production do
  gem 'rails_log_stdout',           github: 'heroku/rails_log_stdout'
  gem 'rails3_serve_static_assets', github: 'heroku/rails3_serve_static_assets'
  # Performance and Exception management
  # gem 'airbrake'
  # gem 'newrelic_rpm'
end

group :development, :test do
  gem 'debugger'
  gem 'delorean'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry'
  gem 'pry-rails'
  gem 'dotenv-rails'
end

group :development do
  gem 'bullet'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'meta_request'
end

group :test do
  gem 'capybara'
  gem 'coveralls', require: false
  gem 'database_cleaner'
  gem 'email_spec'
  gem 'launchy'
  gem 'rspec'
  gem 'rspec-rails'
  gem 'selenium-webdriver'
  gem 'simplecov', require: false
  gem 'webmock', require: false
end
