require './app/models/artist.rb'
require './app/models/album.rb'
require 'json'

# albums controller
class AlbumsController
  def self.index(itunes_id)
    @albums = Artist.find_by_id(itunes_id).albums
  end
end
