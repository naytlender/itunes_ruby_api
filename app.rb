require 'sinatra'
require './app/controllers/artists_controller.rb'
require './app/controllers/albums_controller.rb'

get '/artists' do
  { artists: ArtistsController.index }.to_json
end

get '/artists/:itunes_id/?' do |itunes_id|
  ArtistsController.show(itunes_id).to_json
end

get '/artists/:itunes_id/albums/?' do |itunes_id|
  { albums: AlbumsController.index(itunes_id) }.to_json
end
