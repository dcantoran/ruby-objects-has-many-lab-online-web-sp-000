require 'pry'
class Post 
  attr_accessor :title, :author 
  @@all = []
  def initialize(title)
    @title = title 
    save
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.all 
    @@all
  end 
  
  def author_name
    nil if Post.includes?(author) else self.author.name 
    # binding.pry
  end 
  
end 