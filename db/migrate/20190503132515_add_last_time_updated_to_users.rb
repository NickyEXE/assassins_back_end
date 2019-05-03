class AddLastTimeUpdatedToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :lastTimeUpdated, :datetime
  end
end
