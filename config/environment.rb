# Be sure to restart your server when you modify this file

# Specifies gem version of Rails to use when vendor/rails is not present
RAILS_GEM_VERSION = '2.3.2' unless defined? RAILS_GEM_VERSION

# Bootstrap the Rails environment, frameworks, and default configuration
require File.join(File.dirname(__FILE__), 'boot')
require 'desert'


Rails::Initializer.run do |config|
  config.plugins = [:community_engine, :white_list, :all]
  config.plugin_paths += ["#{RAILS_ROOT}/vendor/plugins/community_engine/plugins"]

  config.gem 'ri_cal'
  config.gem 'authlogic'  
  config.gem 'calendar_date_select'
  config.gem 'aws-s3', :lib => 'aws/s3'
  config.gem 'haml', :lib => 'htmlentities'
  config.gem 'htmlentities', :lib => 'htmlentities'
  config.gem 'hpricot', :lib => 'hpricot'
  config.gem 'rmagick', :lib => 'RMagick'
  config.gem 'desert', :lib => 'desert'

end


require "#{RAILS_ROOT}/vendor/plugins/community_engine/config/boot.rb"


ActionMailer::Base.smtp_settings = {
  :address  => ENV['smtp_address'],
  :port  => 25,
  :user_name  => "#{ENV['smtp_user']}@#{ENV['smtp_address']}",
  :password  => ENV['smtp_password'],
  :domain => 'localhost',   
  :authentication  => :login,
  :tls => false  
}


raise YAML.load(ERB.new(File.read('config/amazon_s3.yml')).result)[RAILS_ENV].inspect