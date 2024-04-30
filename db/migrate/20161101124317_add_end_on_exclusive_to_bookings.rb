class AddEndOnExclusiveToBookings < ActiveRecord::Migration[6.1]
  def change
    add_column :bookings, :end_on_exclusive, :date, after: :end_on
  end
end
