ENV['GEM_PATH'] = '/home/brousali/gems'

require 'rubygems'
require 'vendor/sinatra-1.0/lib/sinatra.rb'
require 'vendor/tilt-1.0/lib/tilt.rb'
require 'vendor/haml/lib/haml.rb'

Sinatra::Application.default_options.merge!(
  :run => false,
  :env => :production,
  :raise_errors => true
)
 
log = File.new("sinatra.log", "a")
STDOUT.reopen(log)
STDERR.reopen(log)

require 'app'
run Sinatra::Application
