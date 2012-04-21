source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2'
  gem 'coffee-rails', '~> 3.2'
  gem 'coffee-filter'
  gem 'uglifier', '>= 1.2'
  gem 'haml-rails'
  gem 'haml-coderay'
  gem 'zurb-foundation', '>= 2.2'
end

gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'jquery-ui-themes'
gem 'apotomo', '>= 1.2'
gem 'cells', '>= 3.8'
gem 'execjs'
gem 'em-websocket'
gem 'passenger'

platforms :ruby do
  gem 'therubyracer', '>= 0.9'
  gem 'libv8'
  gem 'sqlite3'
  #to use debugger
  gem 'debugger'
end

platforms :jruby do
  gem 'activerecord-jdbcsqlite2-adapter'
  gem 'jdbc-sqlite3'
  gem 'jruby-openssl'
  gem 'trinidad', '~> 1.3.2'
  gem 'therubyrhino'
end
  
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the web server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'

group :development, :test do
  gem 'pry', '>= 0.9.8'
  gem 'awesome_print'
  gem 'rspec-cells'
  gem 'rspec-rails',  '~> 2.9.0'
  gem 'rspec-apotomo', '~> 0.9.6'
  gem 'warbler'
  gem 'net-ssh'
  gem 'net-scp'
  gem 'guard-rails'
  gem 'rails_best_practices'
end

group :test do
  gem 'cucumber-rails'
  gem 'gherkin', '~> 2.9'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'culerity'
  gem 'launchy'
  gem 'jasmine'
  gem 'machinist'
  gem 'guard-annotate'
  gem 'guard-rspec'
  gem 'guard-cucumber'
  gem 'guard-jasmine'
  gem 'guard-rails_best_practices'
  
  gem 'simplecov', :require => false
end