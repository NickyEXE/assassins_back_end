class ChangeUsersLocationXToLatitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :current_location_x, :latitude
  end
end
