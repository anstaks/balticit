source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

gem 'activeadmin',   '~> 0.6.0'
gem 'carrierwave'
gem 'mini_magick'
gem 'friendly_id'
gem 'ckeditor'
gem 'noty-rails'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'compass-rails'
  gem 'bootstrap-sass'

  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'

  gem 'eco'
end

gem 'jquery-rails', '~> 2.3.0'
gem 'russian'

gem 'unicorn'
gem 'whenever'
gem 'exception_notification'

group :test do
  gem 'rspec-rails'

  gem 'cucumber'
  gem 'cucumber-rails', :require => false
  gem 'cucumber_factory'
  gem 'cucumber-websteps'

  gem 'capybara'
  gem 'capybara-screenshot'

  gem 'selenium-webdriver'

  gem 'headless'
  gem 'database_cleaner'
  gem 'simplecov', require: false

  gem 'action_mailer_cache_delivery'
  gem 'email_spec'
end

group :development do
  gem 'capistrano'
  gem 'capistrano-ext'
  gem 'capistrano-unicorn'
  gem 'rvm-capistrano'

  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'rack-mini-profiler'
  gem 'sextant'
  gem 'quiet_assets'
  gem 'thin'
  gem 'letter_opener'
  gem 'pry-rails', require: false
  gem 'brakeman', require: false
  #refactoring
  gem 'rails_best_practices', require: false
end

group :development, :test do
  gem 'debugger'
  gem 'ffaker'
  gem 'factory_girl_rails'
end

# gem 'rename' | For rename project with one comand "rails g rename:app_to New-Name"
