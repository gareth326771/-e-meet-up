class AddColumnsToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :gamer_tags, :string
    add_column :users, :location, :string
    add_column :users, :games, :string
    add_column :users, :console, :string
    add_column :users, :ranking, :integer
  end
end
