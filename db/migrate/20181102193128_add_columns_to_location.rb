class AddColumnsToLocation < ActiveRecord::Migration[5.2]
  def change
    add_column :locations, :latitude, :string
    add_column :locations, :longitude, :string 
  end
end
