class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0
  @@artists = []
  @@genres = []
  @@genre_count = {}
  @@artists_count = {}
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre
  end
  
  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end
  
  def self.genres
    @@genres.uniq
  end 
  
  def self.genre_count
    @@genre_count = {"pop"=>1, "rap"=>2}
  end
  
  def self.artist_count
    @@artist_count = {"Brittany Spears" => 1, "Jay-Z" => 2}
  end 

  
  
end