class ChangeUsersLocationYToLongitude < ActiveRecord::Migration[5.2]
  def change
    rename_column :users, :current_location_y, :longitude
  end
end
