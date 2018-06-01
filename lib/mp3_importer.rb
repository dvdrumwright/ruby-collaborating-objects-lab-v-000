 class MP3Importer 
   
 attr_accessor :path 
   
 def initialize(path)
     @path = path
 end 

 def files
    files = []
    Dir.new(self.path).each do |file|
      files << file if file.length > 4
    end
    files
  end

  def import
    self.files.each do |filename|
      Song.new_by_filename(filename)
     end
    end
   end

   def files
    Dir.new(self.path).map do |file|
      files << file if file.length > 4
   end
  
 
   def import 
   self.files.each do |a| 
     Song.new_by_filename(a)
     end 
    end 
   end 