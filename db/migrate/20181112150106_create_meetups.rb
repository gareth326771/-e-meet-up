class CreateMeetups < ActiveRecord::Migration[5.2]
  def change
    create_table :meetups do |t|
      t.string :location
      t.references :user, foreign_key: true
      t.integer :capacity
      t.date :date
      t.text :description
      t.string :game
      t.integer :price

      t.timestamps
    end
  end
end
