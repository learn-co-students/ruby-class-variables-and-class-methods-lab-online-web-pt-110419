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
      @@artists << artist  
      @@genres << genre
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
    new_hash = Hash.new(0)
    @@artists.each do |a|
     new_hash[a] += 1 
    end 
    new_hash
  end
  
  def self.genres
    @@genres.uniq
  end
  
  def self.genre_count
   new_hash = {}
    @@genres.each do |h| 
    if new_hash[h] 
     new_hash[h] += 1
    else 
      new_hash[h] = 1
    end 
    end
    new_hash
  end
end