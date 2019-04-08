require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artist = []

  def initialize(name, artist, genre)
    @name = name 
    @artist = artist 
    @genre = genre 
    @@genres << @genre
    @@artist << @artist 
    @@count += 1 
    binding.pry 
  end
  
  def self.count  
    @@count
  end
  
  def self.genres
    @@genres.uniq 
  end 
  
  def self.genre_count 
    binding.pry 
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
  
  def self.artist
    @@artist.uniq
  end
  
  def self.artist_count 
    artist_count = {}
  end
end