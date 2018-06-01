class MP3Importer 
   
 attr_accessor :path 
   
 def initialize(path)
     @path = path
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
   
   end
   