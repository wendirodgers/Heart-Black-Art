class AddColumnsToLocation < ActiveRecord::Migration[5.2]
  add_column :locations, :latitude, :string
  add_column :locations, :longitude, :string 
  def change
  end
end
