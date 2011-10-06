source 'http://rubygems.org'

gem 'community_engine', '2.0.0.beta', :git => 'https://github.com/bborn/communityengine.git', :branch => 'rails3'

group :production do
  gem 'pg'
  gem 'thin'  
end

group :assets do
  gem 'sass-rails', "~> 3.1.0.rc"
  gem 'coffee-script'
  gem 'uglifier'
end

group :development do
  gem 'sqlite3'
  gem 'rails-dev-tweaks', '~> 0.5.0'  
end

group :test do
  # Pretty printed test output
  gem 'turn', :require => false
end
