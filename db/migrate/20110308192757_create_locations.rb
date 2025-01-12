class CreateLocations < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.string :address
      t.string :google_address

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
