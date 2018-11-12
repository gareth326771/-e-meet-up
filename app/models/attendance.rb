class Attendance < ApplicationRecord
  belongs_to :meetup
  belongs_to :user
  has_one :review
end
