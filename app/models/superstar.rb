class Superstar < ApplicationRecord
  has_many :bookings
  has_many :reviews
  belongs_to :user
  validates :name, presence: true
  validates :event_type, presence: true
  validates :bio, presence: true
  validates :price, presence: true
  validates :region, presence: true

  include PgSearch::Model
    pg_search_scope :search_by_name_and_event_type,
      against: [ :name, :event_type ],
      using: {
        tsearch: { prefix: true }
      }

  def self.event_type
    ["wedding", "birthday", "honeymoon", "party"]
  end
end
