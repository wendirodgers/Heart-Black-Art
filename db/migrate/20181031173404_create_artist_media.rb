class CreateArtistMedia < ActiveRecord::Migration[5.2]
  def change
    create_table :artist_media do |t|
      t.integer :artist_id
      t.integer :medium_id

      t.timestamps
    end
  end
end
