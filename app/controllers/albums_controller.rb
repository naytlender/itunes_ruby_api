require './app/models/artist.rb'
require './app/models/album.rb'
require 'json'

# albums controller
class AlbumsController
  def self.index(itunes_id)
<<<<<<< HEAD
    @albums = Artist.find_by(itunes_id: itunes_id).albums
=======
    @albums = Artist.find_by_id(itunes_id).albums
>>>>>>> 4f647deaa0190d21effb777bd4ab79305fb48d8c
  end
end
