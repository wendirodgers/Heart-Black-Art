class CreateArtistLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_locations do |t|
      t.integer :artist_id
      t.integer :location_id

      t.timestamps
    end
  end
end
