class Medium < ApplicationRecord
  has_many :artist_media
  has_many :artists, through: :artist_media
  has_many :medium_locations 
  has_many :locations, through: :medium_locations
end
