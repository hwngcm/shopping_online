source "https://rubygems.org"

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem "bcrypt", "3.1.11"
gem "config"
gem "coffee-rails", "~> 4.2"
gem "font-awesome-rails"
gem "flex-slider-rails"
gem "faker"
gem "jbuilder", "~> 2.5"
gem "jquery-rails"
gem "turbolinks", "~> 5"
gem "puma", "~> 3.7"
gem "will_paginate"
gem "bootstrap-will_paginate"
gem "rails", "~> 5.1.6"
gem "rails-i18n", "~> 5.1"
gem "sass-rails", "~> 5.0"
gem "sqlite3"
gem "uglifier", ">= 1.3.0"

group :development, :test do
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]
  gem "capybara", "~> 2.13"
  gem "selenium-webdriver"
end

group :development do
  gem "web-console", ">= 3.3.0"
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  gem "bullet"
end

group :framgia do
  gem "autoprefixer-rails"
  gem "brakeman", require: false
  gem "bundler-audit"
  gem "database_cleaner"
  gem "factory_bot"
  gem "guard-rspec", require: false
  gem "jshint"
  gem "railroady"
  gem "rails_best_practices"
  gem "reek"
  gem "rubocop", require: false
  gem "rubocop-checkstyle_formatter", require: false
  gem "scss_lint", require: false
  gem "scss_lint_reporter_checkstyle", require: false
end

gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]
