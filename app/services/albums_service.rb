require 'json'
# albums service
class AlbumsService
  ALBUMS_URL = proc { |itunes_id| "https://itunes.apple.com/lookup?id=#{itunes_id}&entity=album" }

  attr_reader :itunes_id

  def initialize(itunes_id)
    @itunes_id = itunes_id
  end

  def perform
    save_albums
  end

  private

  def albums
    @albums ||= Net::HTTP.get(URI.parse(ALBUMS_URL.call(itunes_id)))
  end

  def parsed_albums
    @albums_hash = JSON.parse(albums)
  end

  def save_albums
    artist = artist(itunes_id)
    # check for results
    if parsed_albums['resultCount'] > 0
      # save
      parsed_albums['results'].drop(1).each do |album|
        if a = artist.albums.create(name: album['collectionName'], artwork_url_100: album['artworkUrl100'])
          puts "album: #{a.name}"
        end
      end
    else
      puts 'albums not found'
    end
  end

  def artist(itunes_id)
    Artist.find_by_id(itunes_id)
  end
end
