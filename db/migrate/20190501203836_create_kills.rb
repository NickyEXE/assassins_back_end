class CreateKills < ActiveRecord::Migration[5.2]
  def change
    create_table :kills do |t|
      t.integer :killer_id
      t.integer :victim_id
      t.float :kill_location_x
      t.float :kill_location_y
      t.integer :game_id
      t.timestamp :time

      t.timestamps
    end
  end
end
