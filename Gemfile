source 'https://rubygems.org'
ruby '2.1.1'
gem 'rails', '4.0.4'
gem 'sass-rails', '~> 4.0.0'
gem 'compass-rails'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'bootstrap-sass', '>= 3.0.3.0'
gem 'font-awesome-rails', '~> 4.0.1.0'
gem 'figaro'
gem 'haml-rails'
gem 'simple_form'
gem 'inherited_resources'
gem 'dekiru'
gem 'enumerize'
gem 'ransack'
gem "carrierwave"
gem "fog"
gem "rmagick"
gem 'squeel'
gem "gretel"
gem "kaminari"
gem 'meta-tags', :require => 'meta_tags'
gem 'sprockets', '2.11.0'

# auth
gem 'devise'
gem 'omniauth'
gem 'omniauth-github'
gem 'config'

group :development do
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'guard-bundler'
  gem 'guard-rails'
  gem 'guard-rspec'
  gem 'html2haml'
  gem 'letter_opener'
  gem 'heroku_san', git: 'git://github.com/jphenow/heroku_san', branch: 'bug/wrong-ruby-version-loaded'
  gem 'quiet_assets'
  gem 'rails_layout'
  gem 'rb-fchange', :require=>false
  gem 'rb-fsevent', :require=>false
  gem 'rb-inotify', :require=>false
end

group :development, :test do
  gem 'sqlite3'
  gem 'factory_girl_rails'
  gem 'rspec-rails'
  gem 'thin'
end

group :production, :staging do
  gem 'unicorn'
  gem 'rails_12factor'
  # gem 'pg'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner', '1.0.1'
  gem 'email_spec'
end
