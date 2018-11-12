class Meetup < ApplicationRecord
  belongs_to :user
  has_many :attendances
  has_many :reviews, through: :attendance
  validates :user, presence: true
  validates :location, presence: true
  validates :capacity, presence: true, numericallity: true
  validates :date, presence: true
  validates :price, presence: true, numericallity: true
  validates :game, presence: true
end
