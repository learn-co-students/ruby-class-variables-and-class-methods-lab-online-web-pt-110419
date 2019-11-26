require "pry"
class Song 
  attr_accessor :name, :artist,:genre
  
@@count = 0
@@genres =[]
@@artists =[]

def initialize(name,artist,genre)
  @name = name 
  @@count += 1 
  @genre=genre 
  @artist=artist
  @@genres << genre 
  @@artists << artist

end 

def self.artists
    @@artists.uniq
end 

def self.genres 
  @@genres.uniq
end 

def self.count 
  @@count 
  
end 

def self.genre_count 
hash={} 
@@genres.each do |key|
  if hash[key]  
    hash[key] += 1 
  else 
    hash[key] = 1
  end 
end 
  hash
end 

def self.artist_count
hash ={}
@@artists.each do |key|
  if hash[key]
    hash[key] +=1 
  else
    hash[key] = 1 
  end 
  
end 
hash
end 

end 