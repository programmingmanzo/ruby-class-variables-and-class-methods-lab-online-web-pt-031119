require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artist = []

#sets the 3 arguments to instance variable and then those instance variable are placed 
#in class variables. Also sets a counter to count every time it is initializied  
  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@genres << @genre
    @@artists << @artist 
    @@count += 1 
    #binding.pry 
  end
  
  def self.count  
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end 
  
  def self.genre_count 
    #binding.pry 
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1
      else
        genre_count[genre] = 1 
      end
    end
    genre_count
  end
  
  def self.artists
    @@artists.uniq
  end
  
  def self.artist_count 
    artist_count = {}
    @@artist.each do |artist|
      if artist_count[artist]
        artist_count[artist] += 1 
      else 
        artist_count[artist] = 1 
      end 
    end 
    artist_count
  end
end