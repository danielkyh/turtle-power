# say "hey, we want to use that stuff we downloaded"
require 'sinatra'

# require everything in /controllers
# Dir["/controllers"].each { |f| require f }

require_relative "controllers/index"
require_relative "models/pizza"