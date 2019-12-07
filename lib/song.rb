require 'pry'

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@hash = {}

  def initialize(name, artist, genre)
    @@count += 1
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
  end

  def self.count
    @@count
  end

  def self.artists
    return @@artists.uniq
  end

  def self.genres
    return @@genres.uniq
  end

  def self.genre_count
    @@genres_hash = Hash.new(0)
    @@genres.each{|g| @@genres_hash[g] += 1}
    return @@genres_hash
  end

  def self.artist_count
    @@artists_hash = Hash.new(0)
    @@artists.each{|a| @@artists_hash[a] += 1}
    return @@artists_hash
  end

end
