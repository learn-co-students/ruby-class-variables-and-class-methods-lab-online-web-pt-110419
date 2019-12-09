class Song 
  
  attr_accessor :name, :artist, :genres 
    @@count = 0 
    @@genres = []
    @@artists = []
  
  def initialize(name,artist,genre)
    @name = song_name
    @artist = artist
    @genre = genre
    @@count =+ 1 
    @@genres << genre 
    @@artist << artist
  end
  
  def self.count 
    @@count
  end 
  
  def self.genres 
    @@genres.uniq
  end 
  
  def self.artists 
    @@artists.uniq
  end 
  
  def self.genre_count
    genre_count = {}
     @@genres.each {|genre| genre_count[genre] =+ 1}
     genre_count
  end 
  
  def artist_count
    artist_count = {}
    @@artist.each {|artist| artist_count[artist] =+ 1
    artist_count
  end 
end 