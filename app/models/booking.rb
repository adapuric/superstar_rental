class Booking < ApplicationRecord
  belongs_to :superstar
  belongs_to :user
  validates :event_date, presence: true
end
