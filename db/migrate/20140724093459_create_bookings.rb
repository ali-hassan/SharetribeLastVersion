class CreateBookings < ActiveRecord::Migration[6.1]
  def change
    create_table :bookings do |t|
      t.integer :conversation_id
      t.date :start_on
      t.date :end_on

      t.timestamps
    end
  end
end
