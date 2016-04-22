require './app/models/artist.rb'
require 'json'
# artists controller
class ArtistsController
  def self.index
    artists = Artist.all
    artists_array = []
    artists.each do |a|
      artists_array.push(name: a.name, itunes_id: a.itunes_id)
    end
    artists_array
  end

  def self.show(itunes_id)
    artist = Artist.find_by(itunes_id: itunes_id)
    { name: artist.name, itunes_id: artist.itunes_id }
  end
end
