  class Song 
  attr_accessor :name, :artist 
  
  def initialize(name)
    @name = name
  end

  
  
  
  
  
  def new_by_filename(file) 
    song_data = file.chomp("mp3").split(" - ")
    song = Song.new(song_data[1])
    song.artist_name(song_data[0])
  end 


  end 