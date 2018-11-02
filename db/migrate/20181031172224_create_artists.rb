class CreateArtists < ActiveRecord::Migration[5.2]
  def change
    create_table :artists do |t|
      t.string :name
      t.string :location
      t.string :gender
      t.string :age
      t.string :facebook
      t.string :tumblr
      t.string :instagram
      t.string :twitter

      t.timestamps
    end
  end
end
