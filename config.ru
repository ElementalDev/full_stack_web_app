# Include sinatra
require "sinatra"
require "sinatra/contrib"
require "sinatra/reloader" if development?

# Include pry
require "pry"

# Include Postgres
require "pg"

# Include the Postgres model
require_relative "./models/movies_model.rb"

# Include the controller
require_relative "./controllers/movie_post_controller.rb"

# Initialise Rack reloader
use Rack::Reloader

# Allow rack to catch requests and make sure they do what they need to do
use Rack::MethodOverride

# Run the correct controller
run PostController
