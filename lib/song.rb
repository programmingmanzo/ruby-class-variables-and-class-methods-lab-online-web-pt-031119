require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artist = []

  def initialize(name, artist, genre)
    @@count += 1 
    @genre = genre 
    @artist = artist
    @name = name 
    if !(@@genres.include?(@genre))
    @@genres << @genre 
    #binding.pry 
    end
  end
  
  def self.count  
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end 
  
  def self.genre_count 
    genre_count = {}
  end
  
  def self.artist
    @@artist.uniq
  end
  
  def self.artist_count 
    artist_count = {}
  end
end