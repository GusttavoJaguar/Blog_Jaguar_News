source "https://rubygems.org"

ruby "3.3.2"

gem "rails", "~> 7.1.4"

gem "sprockets-rails"
gem "puma", ">= 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem "tzinfo-data", platforms: %i[windows jruby]
gem "bootsnap", require: false

# Uncomment if you need image processing
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[mri windows]
  gem "sqlite3", "~> 1.5"
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "rspec-rails", "~> 5.0", ">= 5.0.2"
end

group :development do
  gem "web-console"
  # Uncomment if you need performance profiling
  # gem "rack-mini-profiler"
  # Uncomment if you need faster commands
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
end

group :production do
  gem "pg", "~> 1.2"  # PostgreSQL for production
end
