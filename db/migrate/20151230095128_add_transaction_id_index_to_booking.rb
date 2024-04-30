class AddTransactionIdIndexToBooking < ActiveRecord::Migration[6.1]
  def change
    add_index "bookings", ["transaction_id"]
  end
end
