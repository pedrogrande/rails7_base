source "https://rubygems.org"
ruby "3.3.4"
# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.2.1"

# gem 'acts_as_list'
gem 'acts-as-taggable-on'
gem 'autoprefixer-rails'
# gem 'cancancan'
# gem 'canonical-rails', github: 'jumph4x/canonical-rails'
# gem 'carrierwave', '~> 3.0'
# gem "chartkick"
# gem 'cloudinary'
gem 'country_select'
gem 'devise'
gem 'exception_notification'
gem 'friendly_id', '~> 5.4.0'
# gem 'geocoder'
# gem "groupdate"
# gem 'httparty'
gem 'inline_svg'
gem 'invisible_captcha'
# gem 'local_time'
# gem 'random_name_generator'
gem 'redcarpet'
gem 'rolify', '~> 6.0'
gem 'sassc-rails'
# gem 'simple_calendar', '~> 2.4'
gem 'simple_form'
# gem 'sitemap_generator'
gem 'sucker_punch', '~> 3.0'



# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"
# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"
# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"
# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"
# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"
# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"
# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"
# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ], require: "debug/prelude"

  # Static analysis for security vulnerabilities [https://brakemanscanner.org/]
  gem "brakeman", require: false

  # Omakase Ruby styling [https://github.com/rails/rubocop-rails-omakase/]
  gem "rubocop-rails-omakase", require: false
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"
  gem 'hotwire-livereload', '~> 1.2'
  # rails livereload:install (Run this after starting new app)
  gem 'annotate'
  gem 'htmlbeautifier'
  gem 'rubocop', require: false
  gem 'rubocop-rails'
  gem 'ruby-lsp'
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end
