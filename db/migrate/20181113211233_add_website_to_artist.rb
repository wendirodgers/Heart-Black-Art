class AddWebsiteToArtist < ActiveRecord::Migration[5.2]
  def change
    add_column :artists, :website, :string
  end
end
