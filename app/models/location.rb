class Location < ApplicationRecord
  has_many :artist_locations
  has_many :artists, through: :artist_locations
  has_many :medium_locations
  has_many :media, through: :medium_locations
end
