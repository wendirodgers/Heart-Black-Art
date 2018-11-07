class Location < ApplicationRecord
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  has_many :artist_locations
  has_many :artists, through: :artist_locations
  has_many :medium_locations
  has_many :media, through: :medium_locations
end
