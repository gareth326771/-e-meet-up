class Meetup < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :reviews, through: :attendance
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  # validates :user, presence: true
  # validates :location, presence: true
  # validates :capacity, presence: true, numericality: true
  # validates :date, presence: true
  # validates :price, presence: true, numericality: true
  # validates :game, presence: true
end
