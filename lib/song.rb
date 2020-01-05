#require 'pry'
class Song
 # binding.pry 
    @@count = 0
    @@genres = 0
   @@genres = []
    @@artists = 0
    @@artists =[]
  
  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
      @name = name
      @artist = artist 
      @genre = genre
      @@artits = artist
      @@genres = genre
      #@@artists += 1 
      #@@genres += 1
      @@count += 1
  end
  
#  def self.new(name, artist, genre)
#    @name =0
#    @artist 
#    @genre
#  end 
  
 # def self.new=(name, artist, genre)
 #   @name = name 
 #   @artist = artist 
 #   @genre = genre 
 # end 
  
  def self.count
    @@count
  end 
  
 
    
  def self.artists 
    @@artists.uniq
  end 
  
  def self.artist_count
    @@count.uniq
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
    @@count
  end
end