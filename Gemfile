source 'https://rubygems.org'

ruby '2.1.5'
gem 'rails', '4.1.8'

gem 'dotenv-rails', groups: [:development, :test]
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc
gem 'spring', group: :development
gem 'unicorn'
gem 'pg'
gem 'compass-rails'
gem 'faker'
gem 'bcrypt', '~> 3.1.7'
gem 'paperclip'
gem 'aws-sdk'

group :development, :test do
  gem 'simplecov', :require => false, :group => :test
  gem 'nokogiri'
  gem 'rspec-rails'
  gem 'better_errors'
  gem 'pry'
  gem 'capybara'
  gem 'selenium'
  gem 'binding_of_caller'
  gem 'launchy'
  gem 'guard-rspec', require: false
  gem 'factory_girl_rails'
end

group :production, :staging do
  gem 'rails_12factor'
end
