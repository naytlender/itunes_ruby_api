require './app/application.rb'
require './app/models/album.rb'
# class Artist
class Artist < Application
  include Mongoid::Document

  has_many :albums, dependent: :delete

  field :name, type: String
  field :itunes_id, type: Integer

  validates :itunes_id, uniqueness: true

  def self.find_by_name(name)
    find_by(name: name)
  end

  def self.find_by_id(itunes_id)
    find_by(itunes_id: itunes_id)
  end
end
