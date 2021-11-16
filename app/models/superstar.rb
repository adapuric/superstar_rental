class Superstar < ApplicationRecord
  has_many :bookings
  belongs_to :users
  validates :name, presence: true
  validates :event_type, presence: true
  validates :availabilities, presence: true
end
