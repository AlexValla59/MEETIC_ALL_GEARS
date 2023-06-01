class AddTimeLimitToBooking < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start_at, :date
    add_column :bookings, :end_at, :date
  end
end
