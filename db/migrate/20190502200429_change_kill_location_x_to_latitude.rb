class ChangeKillLocationXToLatitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :kills, :kill_location_x, :latitude
  end
end
