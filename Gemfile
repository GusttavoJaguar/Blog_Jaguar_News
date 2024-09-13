# Gemfile
source 'https://rubygems.org'

# Ruby version
ruby '3.3.2'

# Rails
gem 'rails', '~> 7.1.4'

# Gems for the application
gem 'puma', '~> 5.6'
gem 'sass-rails', '>= 6'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder', '~> 2.0'
gem 'pg', '~> 1.2'
gem 'redis', '~> 7.0'
gem 'bcrypt', '~> 3.1.7'

# Gems for development and test
group :development, :test do
  gem 'sqlite3', '~> 1.4'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Gems for production
group :production do
  gem 'pg', '~> 1.2'
  gem 'rails_12factor'
end

# Gems for testing
group :test do
  gem 'capybara', '>= 3.35'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

# Gems for development
group :development do
  gem 'dotenv-rails', '~> 2.7'
end
