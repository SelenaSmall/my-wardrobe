source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
# source "http://railscamp.local/rubygems"


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

# bootstrap for styles
gem 'bootstrap-sass', '3.2.0.2'

# Image upload
gem 'carrierwave'
gem 'carrierwave-base64'
gem 'rmagick' # have any error? see this link: http://stackoverflow.com/a/5207041

# react
#   following https://learnetto.com/blog/3-ways-to-use-react-with-ruby-on-rails-5
#   based on https://github.com/shakacode/react_on_rails
gem "react_on_rails", "~> 6"
gem 'mini_racer', platforms: :ruby

group :development, :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'rspec-rails', '~> 3.5'
  gem "pry-byebug"
  gem 'pry-rails'
end

group :test do
  gem "factory_girl_rails", "~> 4.0"
  gem 'database_cleaner'
  gem 'faker'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
