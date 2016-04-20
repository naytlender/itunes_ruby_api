require './app/models/artist.rb'
require 'json'
# artists controller
class ArtistsController
  def self.index
    @artists = Artist.all
  end

  def self.show(itunes_id)
    @artist = Artist.find_by_id(itunes_id)
  end
end
