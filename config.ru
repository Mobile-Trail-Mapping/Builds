ENV['GEM_PATH'] = '/home/brousali/gems'

require 'rubygems'
require 'vendor/sinatra-1.0/lib/sinatra.rb'
require 'vendor/tilt-1.0/lib/tilt.rb'
require 'vendor/haml/lib/haml.rb'

set :run, false
set :environment, :production

require 'app'
run Sinatra::Application
