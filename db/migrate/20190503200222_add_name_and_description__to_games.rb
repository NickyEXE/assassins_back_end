class AddNameAndDescriptionToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :name, :string
    add_column :games, :description, :string
  end
end
