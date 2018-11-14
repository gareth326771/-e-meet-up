class AddCoordinatesToMeetups < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :latitude, :float
    add_column :meetups, :longitude, :float
  end
end
