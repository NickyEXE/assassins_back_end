class RemoveStartTimeFromGames < ActiveRecord::Migration[5.2]
  def change
    remove_column :games, :start_time
  end
end
