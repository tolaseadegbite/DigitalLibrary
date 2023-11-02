source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "3.1.2"

gem "rails",                      "7.0.8"
gem "image_processing",           "1.12.2"
gem "active_storage_validations", "0.9.8"
gem "devise"
gem "faker",                      "2.21.0"
gem "bootstrap-sass",             "3.4.1"
# gem 'pagy',                       '~> 6.0'
gem "will_paginate",              "3.3.1"
gem "bootstrap-will_paginate",    "1.0.0"
gem "pg",                         "1.3.5"
gem "sassc-rails",                "2.1.2"
gem "sprockets-rails",            "3.4.2"
gem "importmap-rails",            "1.1.0"
gem "turbo-rails",                "1.1.1"
gem "stimulus-rails",             "1.0.4"
gem "jbuilder",                   "2.11.5"
gem "puma",                       "5.6.4"
gem "bootsnap",                   "1.12.0", require: false

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ mingw mswin x64_mingw jruby ]

# Use Sass to process CSS
# gem "sassc-rails"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri mingw x64_mingw ]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  gem "capybara",                 "3.37.1"
  gem "selenium-webdriver",       "4.2.0"
  gem "webdrivers",               "5.0.0"
  gem "rails-controller-testing", "1.0.5"
  gem "minitest",                 "5.15.0"
  gem "minitest-reporters",       "1.5.0"
  gem "guard",                    "2.18.0"
  gem "guard-minitest",           "2.4.6"
end

group :production do
  # gem "pg",         "1.3.5"
  gem "aws-sdk-s3", "1.114.0", require: false
end
