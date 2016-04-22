require './app/models/artist.rb'
require './app/models/album.rb'
require 'json'

# albums controller
class AlbumsController
  def self.index(itunes_id)
    albums = Artist.find_by(itunes_id: itunes_id).albums
    albums_array = []
    albums.each do |a|
      albums_array.push(name: a.name, artwork_url_100: a.artwork_url_100)
    end
    albums_array
  end
end
