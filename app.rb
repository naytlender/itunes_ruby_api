require 'sinatra'
require './app/controllers/artists_controller.rb'
require './app/controllers/albums_controller.rb'

configure do
  set :public_folder, File.expand_path('client/dist')
end

get '/' do
  send_file 'client/dist/index.html'
end

get '/artists' do
  { artists: ArtistsController.index }.to_json
end

get '/artists/:itunes_id/?' do |itunes_id|
  { artist: ArtistsController.show(itunes_id) }.to_json
end

get '/artists/:itunes_id/albums/?' do |itunes_id|
  { albums: AlbumsController.index(itunes_id) }.to_json
end
