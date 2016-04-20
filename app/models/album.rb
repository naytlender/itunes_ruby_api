require './app/application.rb'
require './app/models/artist.rb'
# class Album
class Album < Application
  include Mongoid::Document

  belongs_to :artist

  field :name, type: String
  field :artwork_url_100, type: String
end
