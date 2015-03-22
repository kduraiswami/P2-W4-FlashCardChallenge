source 'https://rubygems.org'
ruby '2.1.0'

# PostgreSQL driver
gem 'pg'
gem 'omniauth', '~> 1.2'
gem 'omniauth-auth0', '~> 1.1'

# Sinatra driver
gem 'sinatra'
gem 'sinatra-contrib'

gem 'activesupport', '~>4.2.0'
gem 'activerecord', '~>4.2.0'

gem 'rake'

gem 'shotgun'
gem 'hirb'

group :test do
  gem 'shoulda-matchers'
  gem 'rack-test'
  gem 'rspec', '~>3.0'
  gem 'capybara'
end

group :test, :development do
  gem 'sqlite3'
  gem 'factory_girl'
  gem 'faker'
end

group :production do
  # gem 'pg'
  gem 'rails_12factor'
end
