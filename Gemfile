source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails", "~> 7.0.4"
gem "sprockets-rails"
gem "puma", "~> 5.0"
gem "importmap-rails"
gem "turbo-rails"
gem "stimulus-rails"
gem "jbuilder"
gem 'tzinfo-data', '~> 1.2022', '>= 1.2022.6'
gem "bootsnap", require: false
gem 'rails-ujs', '~> 0.1.0'
gem 'jquery-rails', '~> 4.5'
gem 'devise', '~> 4.8', '>= 4.8.1'
gem 'finnhub_ruby', '~> 1.1.18'
gem 'excon'
gem 'openssl', '~> 3.0', '>= 3.0.1'
gem 'json', '~> 2.6', '>= 2.6.2'

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  gem 'sqlite3', '~> 1.5', '>= 1.5.3'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
