require './app/models/artist.rb'
require './app/models/album.rb'
require 'json'

# albums controller
class AlbumsController
  def self.index(itunes_id)
    albums = Artist.find_by(itunes_id: itunes_id).albums
    albums_array = []
    i = 0
    albums.each do |a|
      i += 1
      artist_id = a.artist.itunes_id
      albums_array.push(id: i, artist_id: artist_id, name: a.name,
                        artwork_url_100: a.artwork_url_100)
    end
    albums_array
  end
end
