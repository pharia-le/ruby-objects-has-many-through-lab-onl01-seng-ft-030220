class Genre
  
 attr_accessor :name
  
  @@all = []
  
  def initialize(name)
    @name = name
    self.save
  end
  
  def songs
    Song.all.select {|song| song.genre = self}  
  end
  
  def artists
    songs.map {|song| song.artist}
  end
  
  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end