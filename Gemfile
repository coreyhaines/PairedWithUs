source 'http://rubygems.org'

gem 'rails', '3.1.0.rc6'

gem 'haml'
gem 'devise'
gem 'gravtastic'


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails', "  ~> 3.1.0.rc"
  gem 'coffee-rails', "~> 3.1.0.rc"
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
