source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.0'
# -----aqui vamos a poner los gem de development y production-----

group :development do

  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
group :production do
    
    gem 'pg'
    gem 'rails_12factor'

end
# -----fin de gem development y production -----

# Use postgresql as the database for Active Record


# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'devise'
gem 'carrierwave'
gem 'mini_magick'

gem 'bootstrap', '~> 4.4.1'
gem 'jquery-rails', '~> 4.3.5'
gem 'popper_js', '~> 1.16'
gem 'cancancan'
gem 'omniauth-facebook'
gem 'dotenv-rails'
gem 'activeadmin'
gem 'font-awesome-rails'
gem 'font-awesome-sass', '~> 5.12.0'
gem 'geocoder'
gem 'rails-erd', group: :development
gem 'paypal-sdk-rest'
gem 'wicked_pdf'
gem 'wkhtmltopdf-binary'
gem 'rails-i18n'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'


# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'

# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use ActiveStorage variant
# gem 'mini_magick', '~> 4.8'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.1.0', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

# group :development do
#   gem 'pg', '>= 0.18', '< 2.0'
#   # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
#   gem 'web-console', '>= 3.3.0'
#   gem 'listen', '>= 3.0.5', '< 3.2'
#   # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#   gem 'spring'
#   gem 'spring-watcher-listen', '~> 2.0.0'
# end
# group :production do
#     gem 'pg', '>= 0.18', '< 2.0'
#     gem 'rails_12factor'
# end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15', '< 4.0'
  gem 'selenium-webdriver'
  # Easy installation and use of chromedriver to run system tests with Chrome
  gem 'chromedriver-helper'
end

# group :production do
#     gem 'pg', '>= 0.18', '< 2.0'
#     gem 'rails_12factor'
# end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
