require 'pry'

class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  
  @@genres = []
  
  @@artists = []
  
  @@genre_count = {}
  
  @@artists_count = Hash.new(0)
  

  
  def initialize(name, artist, genre)
    num = 1
    art = 1
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1 
    
    @@genres << genre 
    @@artists << artist 
    
    @@genre_count ||= @@genre_count[genre] = [num]
    if @@genre_count.include?(genre)
      @@genre_count[genre] = num += 1
    else @@genre_count[genre] = num
    end
    
  end
  
  def self.count
    count = @@count
  end
  
  def self.genres
    @@genres.uniq!
  end
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genre_count
    @@genre_count
  end
  
  def self.artist_count
      @@artists.each do |v|
      @@artists_count[v] += 1
    end
    @@artists_count
  end
end