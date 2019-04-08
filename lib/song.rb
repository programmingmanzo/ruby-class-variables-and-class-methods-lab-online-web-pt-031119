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
  
  def count 
    @@count
  end
  
  def count=(count)
    
  end 
  
end