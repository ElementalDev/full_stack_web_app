class Post
  # Create getter and setter functions for these instance variables
  attr_accessor(:id, :img_url, :title, :year_released, :summary)

  def self.open_connection
    conn = PG.connect(dbname: "moviedb")
  end

  def save
    conn = Post.open_connection

    if (!self.id)
      sql = "INSERT INTO movies (img_url, title, year_released, summary) VALUES ('#{self.img_url}', '#{self.title}', '#{self.year_released}', '#{self.summary}')"
    else
      sql = "UPDATE movies SET img_url = #{self.img_url}, title = #{self.title}, year_released = #{self.year_released}, summary = #{self.summary} WHERE id = #{self.id}"
    end

    conn.exec(sql)
  end

  def self.all
    # Establish a connection
    conn = self.open_connection
    # SQL command to execute
    sql = "SELECT id, img_url, title, year_released, summary FROM movies ORDER BY id;"
    # Execute the SQL command
    results = conn.exec(sql)
    # Hydrate each result then assign it to posts as an array
    posts = results.map do |result|
      self.hydrate(result)
    end
    # Return posts
    posts
  end

  def self.find(id)
    # Establish a connection
    conn = self.open_connection
    # SQL command to execute
    sql = "SELECT * FROM movies WHERE id = #{id} LIMIT 1"
    # Execute the SQL command
    result = conn.exec(sql)
    # Hydrate each result then assign it to posts as an array
    post = self.hydrate(result[0])
    # Return post
    post
  end

  def self.destroy(id)
  end

  def self.hydrate(post_data)
    # Instantiate the object
    post = Post.new

    # Assign the data how we want it
    post.id = post_data["id"]
    post.img_url = post_data["img_url"]
    post.title = post_data["title"]
    post.year_released = post_data["year_released"]
    post.summary = post_data["summary"]

    # Return the result
    post
  end
end
