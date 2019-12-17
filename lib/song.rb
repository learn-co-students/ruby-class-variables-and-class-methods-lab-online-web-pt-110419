class Song 
  
  Song.artists = ("Jay-Z", "Kendrick Lamar", "xxxTentacion")
end

  Song.genres = ("Rap") 
end

Songs = ("99 Problems", "Alright", "I Dont Let Go")

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
alright = Song.new("Alright", "Kendrick Lamar", "rap")
i_dont_let_go = Song.new("I Dont Let Go", "xxxTentacion", "rap")

class Song
  @@song_count = 3
  
  def self.count 
    @@song_count
  end
  
  Song.count
end

  Song.genres
end

  Song.artists
end
