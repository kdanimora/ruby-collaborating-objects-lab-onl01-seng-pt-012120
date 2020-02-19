class Artist 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self 
  end
  
  def self.all
    @@all
  end 
 
 def add_song(song)
   song.artist = self 
 end  
 
   def songs 
   Song.all.select do |song|
   song.artist == self 
   end 
  end 
 
 
 
   def print_songs
   self.songs.each {|song| puts song.name}
   end 
 
 
 
 end
 