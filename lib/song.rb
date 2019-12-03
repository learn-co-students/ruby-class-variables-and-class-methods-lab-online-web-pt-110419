class Song
  @@count = 0
  @@genres = []
  @@artists = []

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @@count += 1
    self.name = name
    self.artist = artist
    self.genre = genre
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    array = []
    @@genres.each{|index|
      if array.include?(index) == false
        array << index
      end
    }
    array
  end

  def self.artists
    array = []
    @@artists.each{|index|
      if array.include?(index) == false
        array << index
      end
    }
    array
  end

  def self.genre_count
    hash = {}
    @@genres.each{|index|
      if hash.has_key?(index)
        hash[index] += 1
      else
        hash[index] = 1
      end}
    hash
  end

  def self.artist_count
    hash = {}
    @@artists.each{|index|
      if hash.has_key?(index)
        hash[index] += 1
      else
        hash[index] = 1
      end}
    hash
  end

end
