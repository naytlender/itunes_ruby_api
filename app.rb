require 'sinatra'
require './app/controllers/artists_controller.rb'
require './app/controllers/albums_controller.rb'

get '/artists' do
  content_type :json
  ArtistsController.index.to_json
end

get '/artists/:itunes_id/?' do |itunes_id|
  content_type :json
  ArtistsController.show(itunes_id).to_json
end

get '/artists/:itunes_id/albums/?' do |itunes_id|
  content_type :json
  AlbumsController.index(itunes_id).to_json
end
