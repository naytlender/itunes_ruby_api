require 'net/http'
require 'json'
require './app/services/artists_service.rb'
require './app/services/albums_service.rb'
require './app/models/artist.rb'
require './app/models/album.rb'

desc 'find and save artists by name'
task :find, :name do |_t, args|
  name = args[:name]
  artists = ArtistsService.new(name)
  artists.perform
end

desc 'show artist by name'
task :show_artist, :name do |_t, args|
  name = args[:name]
  puts 'itunes id: ' + Artist.find_by_name(name).itunes_id
end

desc 'find and save albums by itunes_id'
task :albums, :itunes_id do |_t, args|
  itunes_id = args[:itunes_id]
  albums = AlbumsService.new(itunes_id)
  albums.perform
end

desc 'show album by name'
task :show_album, :name do |_t, args|
  name = args[:name]
  puts 'id: ' + Album.find_by(name: name)._id
end

task :delete do
  Artist.all.destroy
  Album.all.destroy
end

task :show_all do
  puts Artist.all
  puts Album.all
end
