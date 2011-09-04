source 'http://rubygems.org'

gem 'rails', '~>3.1'

gem 'haml'
gem 'devise'
gem 'gravtastic'

gem 'omniauth'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'


gem 'sqlite3', group: [:development, :test]
group :development do
  gem 'heroku'
  gem 'grb'
end

group :test do
  # Pretty printed test output
  gem 'turn', require: false
end

group :production do
  gem 'pg'
end
