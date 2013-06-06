source 'https://rubygems.org'

gem 'rails', '3.2.13'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'mysql2'

gem 'activeadmin'
gem 'activeadmin-dragonfly', github: 'stefanoverna/activeadmin-dragonfly'
gem 'activeadmin-wysihtml5', github: 'stefanoverna/activeadmin-wysihtml5'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem 'compass-rails'
  gem 'bootstrap-sass'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

group :development, :test do
  gem 'debugger'
  gem 'rspec-rails'
  gem 'database_cleaner'
  gem 'cucumber-rails', :require => false
  gem 'capybara'
  gem 'factory_girl_rails'
end

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'quiet_assets'
  gem 'thin'
  gem 'letter_opener'
  #refactoring
  gem 'rails_best_practices', require: false
end

# gem 'rename' | For rename project with one comand "rails g rename:app_to New-Name"
