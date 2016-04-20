require 'json'
# artists service
class ArtistsService
  ARTIST_URL = proc { |name| "https://itunes.apple.com/search?term=#{name}&entity=musicArtist" }

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def perform
    save_artists
  end

  private

  def artists
    @artists ||= Net::HTTP.get(URI.parse(ARTIST_URL.call(name)))
  end

  def parsed_artists
    @artist_hash = JSON.parse(artists)
  end

  def save_artists
    # check for results
    if parsed_artists['resultCount'] > 0
      # save to bd
      parsed_artists['results'].each do |artist|
        if Artist.create(name: artist['artistName'], itunes_id: artist['artistId'])
          puts "name: #{artist['artistName']}, id: #{artist['artistId']}"
        else
          puts 'wrong params'
        end
      end
    else
      puts "artist #{name} not found"
    end
  end
end
