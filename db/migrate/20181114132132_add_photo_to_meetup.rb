class AddPhotoToMeetup < ActiveRecord::Migration[5.2]
  def change
    add_column :meetups, :photo, :string
  end
end
