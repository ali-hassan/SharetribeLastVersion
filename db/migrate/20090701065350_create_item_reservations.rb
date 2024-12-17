class CreateItemReservations < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :item_reservations do |t|
      t.integer :item_id
      t.integer :reservation_id
      t.integer :amount

      t.timestamps
    end
  end

  def self.down
    drop_table :item_reservations
  end
end
