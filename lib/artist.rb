class Artist 
  attr_accessor :name 
  def initialize
    @name = name 
  end 
  
  def songs 
    Song.all.name 
  end 
  
  def add_song(song)
    song.artist = self 
  end 
  
end 