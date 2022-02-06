source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.0'

# Core
gem 'rails', '~> 6.0.4', '>= 6.0.4.4'

# Config
gem 'turbolinks', '~> 5'

# Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'

# View/Front
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 5.0'


# Backend
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

# add
gem 'psych', '~> 3.1'
gem 'bcrypt'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
