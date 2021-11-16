class AddColumnstoBooking < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :event_date, :datetime
  end
end
