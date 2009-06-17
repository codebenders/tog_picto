ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../../../../config/environment")
require 'test_help'
require 'test/unit'

begin
  gem 'thoughtbot-shoulda', '>=2.10.1'
  require 'shoulda' 
rescue Exception => e
  puts "\n\nYou need shoulda 2.10.1 or greater to test tog_core. Visit http://github.com/thoughtbot/shoulda to view details.\n\n" 
  exit
end

require 'factory_girl'
require File.expand_path(File.dirname(__FILE__) + '/factories')
