class Meetup < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :reviews, through: :attendance
  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?
  mount_uploader :photo, PhotoUploader

  include PgSearch
  multisearchable against: [ :location, :date ] # <-- now `superman batm` will return something!
  # validates :user, presence: true
  # validates :location, presence: true
  # validates :capacity, presence: true, numericality: true
  # validates :date, presence: true
  # validates :price, presence: true, numericality: true
  # validates :game, presence: true
end
