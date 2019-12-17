class Author 
  attr_accessor :name
  def initialize(name)
    @name = name 
  end 
  
  def posts 
    Post.all.select {|posts| posts.author == self}
  end 
  
  def add_post(posts)
    posts.author = self 
  end 
  
  def add_post_by_title(post_title)
    Post.new()
  end 
  
end 