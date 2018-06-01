  class Song 
  
  attr_accessor :name, :artist 
  
  
  def initialize(name)
    @name = name
  end

  
  def artist_name=(name)
    self.artist = Artist.find_or_create_by_name(name)
    artist.add_song(self)
  end
  
  
  def new_by_filename(file) 
    song_data = file.chomp("mp3").split(" - ")
    song = Song.new(song_data[1])
    song.artist_name(song_data[0])
  end 


  end 