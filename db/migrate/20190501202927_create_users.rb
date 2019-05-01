class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :alias
      t.float :current_location_x
      t.float :current_location_y
      t.string :secret_code
      t.integer :target_id
      t.timestamps
    end
  end
end
