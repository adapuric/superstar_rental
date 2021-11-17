class Superstar < ApplicationRecord
  has_many :bookings
  belongs_to :user
  validates :name, presence: true
  validates :event_type, presence: true
  validates :bio, presence: true
  validates :price, presence: true
  validates :region, presence: true
end
