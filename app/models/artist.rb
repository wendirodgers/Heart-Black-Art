class Artist < ApplicationRecord
  has_many :artist_media
  has_many :media, through: :artist_media
  has_many :artist_locations
  has_many :locations, through: :artist_locations 
end
