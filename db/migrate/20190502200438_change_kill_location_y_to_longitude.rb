class ChangeKillLocationYToLongitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :kills, :kill_location_y, :longitude
  end
end
