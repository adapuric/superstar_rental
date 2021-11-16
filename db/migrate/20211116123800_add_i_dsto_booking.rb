class AddIDstoBooking < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :users, foreign_key: true
    add_reference :bookings, :superstars, foreign_key: true
    add_reference :superstars, :users, foreign_key: true
  end
end
