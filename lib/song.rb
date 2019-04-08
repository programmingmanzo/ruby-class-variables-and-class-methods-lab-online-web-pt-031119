require 'pry'

class Song 
  
  attr_accessor :name, :artist, :genre 
  
  @@count = 0 
  @@genres = [] 
  @@artist = 0

  def initialize(name, artist, genre)
    @@count += 1 
    @genre = genre 
    if !(@@genres.include?(@genre))
    @@genres << @genre 
    #binding.pry 
    end
  end
  
  def name 
    @name 
  end
  
  def count 
    @@count
  end
  
  def count=(count)
    
  end 
  
end