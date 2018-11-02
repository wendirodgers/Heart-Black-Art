class ArtistMedium < ApplicationRecord
  belongs_to :artist
  belongs_to :medium
end
