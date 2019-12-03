class Song
  
@@count = 0
@@genres = []
@@artists = []
  
attr_accessor :name, :artist, :genre
  
def initialize(name, artist, genre)
    
  @name = name
  @artist = artist
  @genre = genre
    
  @@count = @@count + 1
  @@genres << @genre
  @@artists << @artist
  
end

def self.count
  return @@count
end
  
def self.genres
  @@genres.uniq
end
  
def self.artists
  @@artists.uniq  
end
  
def self.genre_count
 hash = {} #the hash we want to populate and return
 single_hash_item = {} # an isolated key value pair for - CLARITY's SAKE - 
 @@genres.each {|genre|
  if hash.key(genre) == true
    
  else single_hash_item = {genre => @@genres.count(genre)}
  hash.merge!(single_hash_item)
 end
 }
 hash
end

def self.artist_count
hash = {} #the hash we want to populate and return
single_hash_item = {} # an isolated key value pair for - CLARITY's SAKE -
@@artists.each {|artist|
if hash.key(artist) == true
  
else single_hash_item = {artist => @@artists.count(artist)}
hash.merge!(single_hash_item)
end
}
hash

end

  
  
  
  
  
  
end