source 'https://rubygems.org'

ruby '3.3.2'

gem 'rails', '~> 7.2.1'
gem 'puma', '~> 6.4.2'
gem 'sass-rails', '~> 6.0.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'jbuilder', '~> 2.0'
gem 'bcrypt', '~> 3.1.7'
gem 'activestorage'
gem 'tzinfo-data'

group :development, :test do
  gem 'sqlite3', '~> 1.7'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'web-console', '>= 4.1.0'
  gem 'listen', '~> 3.0'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do
  gem 'rails_12factor'
end

group :test do
  gem 'capybara', '>= 3.35'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

group :development do
  gem 'dotenv-rails', '~> 2.7'
  gem 'bootsnap', '>= 1.4.4', require: false
end
