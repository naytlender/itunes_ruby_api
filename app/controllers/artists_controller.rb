require './app/models/artist.rb'
require 'json'
# artists controller
class ArtistsController
  def self.index
    artists = Artist.all
    artists_array = []
    artists.each do |a|
      artists_array.push(id: a.itunes_id, name: a.name)
    end
    artists_array
  end

  def self.show(itunes_id)
    artist = Artist.find_by(itunes_id: itunes_id)
    { name: artist.name, id: artist.itunes_id }
  end
end
