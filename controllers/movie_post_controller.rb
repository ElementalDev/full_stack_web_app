class PostController < Sinatra::Base
  # Set the root for the project
  set :root, File.join(File.dirname(__FILE__), "..")

  # Set where the views are being stored
  set :views, Proc.new { File.join(root, "views") }

  # Path to Static assets
  set :public_folder, Proc.new { File.join(root, "public") }

  # Initialise the sinatra reloader for continuous refresh
  configure :development do
    register Sinatra::Reloader
  end

  # Show the root page
  get "/" do
    # Dynamically change the title
    @title = "Welcome!"
    # Display the correct page using layout and template
    erb :"posts/index"
  end

  # Show all results
  get "/movies" do
    @title = "All movies"
    # Get all posts from the model
    @posts = Post.all
    erb :"posts/show_all"
  end

  # Create a new movie
  get "/movies/new" do
    @title = "Add a new movie"
    # Create a new instance of Post
    @post = Post.new
    erb :"posts/new"
  end

  # Add new movie to the model
  post "/" do
    post = Post.new
    # Assign the values
    post.img_url = params[:img_url]
    post.title = params[:title]
    post.year_released = params[:year_released]
    post.summary = params[:summary]
    # Save the values
    post.save
    # Redirect back to all movies
    redirect "/movies"
  end

  # Edit an existing movie
  get "/movies/:id/edit" do
    id = params[:id].to_i
    @post = Post.find(id)
    erb :"posts/edit"
  end

  # Save the editted movie to the model
  put "/:id" do
    id = params[:id].to_i
    @post = Post.find(id)
    # Assign the values
    post.img_url = params[:img_url]
    post.title = params[:title]
    post.year_released = params[:year_released]
    post.summary = params[:summary]
    # Save the values
    post.save
    # Redirect back to all movies
    redirect "/movies"
  end

  # Delete a specific movie
  delete "/:id" do
    "Deleted movie from model"
  end

  # Show one movie
  get "/movies/:id" do
    id = params[:id].to_i
    @post = Post.find(id)
    erb :"posts/show_one"
  end
end
