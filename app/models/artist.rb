class Artist < ApplicationRecord
  include PgSearch 
  has_many :artist_media
  has_many :media, through: :artist_media
  has_many :artist_locations
  has_many :locations, through: :artist_locations 
  has_one_attached :image
  pg_search_scope :search_artists, :against => :name, :associated_against => {
    :media => :name
  }

  accepts_nested_attributes_for :media

  def self.create_seeds
    seeds = ""
    all.each do |artist|
      seeds << "Artist.create!(name: '#{artist.name}', location: '#{artist.location}', gender: '#{artist.gender}', age: '#{artist.age}', facebook: '#{artist.facebook}', tumblr: '#{artist.tumblr}', instagram: '#{artist.instagram}', twitter: '#{artist.twitter}')"
    end
    puts seeds
  end
end
