require 'open-uri'
require 'json'
require 'date'
require 'time'
require 'icalendar'
require 'tzinfo'
require 'icalendar/tzinfo'


# Various config options for running
$stdout.sync = true
set :views, Proc.new { File.join(root, "app/views") }
set :server, %w[thin mongrel webrick]

# Auto require model and lib files
Dir["./app/models/*.rb"].each {|file| require file }
Dir["./lib/*.rb"].each {|file| require file }

# Get Icalendar up and running
include Icalendar