source "https://rubygems.org"
git_source(:github) { |bestClip| "https://github.com/#{bestClip}.git" }

ruby "3.2.1"

gem "bootsnap", require: false
gem "devise"
gem "importmap-rails"
gem "jbuilder"
gem "omniauth-github"
gem "omniauth-rails_csrf_protection"
gem "pg", "~> 1.1"
gem "puma", "~> 5.0"
gem "rails", "~> 7.0.4", ">= 7.0.4.3"
gem "sprockets-rails"
gem "stimulus-rails"
gem "turbo-rails"
gem "tailwindcss-rails"
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]
# gem "redis", "~> 4.0"
# gem "kredis"
# gem "bcrypt", "~> 3.1.7"
# gem "sassc-rails"
# gem "image_processing", "~> 1.2"

group :development, :test do
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  gem "web-console"
  # gem "rack-mini-profiler"
  # gem "spring"
end

group :test do
  gem "capybara"
  gem "selenium-webdriver"
  gem "webdrivers"
end
