class ArtistLocation < ApplicationRecord
  belongs_to :artist
  belongs_to :location 
end
