class RenameColumn < ActiveRecord::Migration[5.2]
  def change
      rename_column :locations, :latitiude, :latitude
  end
end
