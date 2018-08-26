class PostController

  # Set the root for the project
  set :root, File.join(File.dirname(__FILE__), "..")
  # Set where the views are being stored
  set :views, Proc.new(File.join(root, "views"))
  # Initialise the sinatra reloader for continuous refresh
  configure :development do
    register Sinatra::Reloader
  end

  # Show the root page
  get "/" do
    "Welcome to the home page"
  end

  # Show all results
  get "/movies" do
    "All movies"
  end

  # Create a new movie
  get "/movies/new" do
    "Create a new movie"
  end

  # Add new movie to the model
  post "/" do
    "Added to model"
  end

  # Edit an existing movie
  get "/movies/:id/edit" do
    "Edit an existing movie"
  end

  # Save the editted movie to the model
  put "/:id" do
    "Added edited movie to model"
  end

  # Delete a specific movie
  delete "/:id" do
    "Deleted movie from model"
  end

  # Show one movie
  get "/movies/:id" do
    "One movie"
  end
end
