class CreateDevices < ActiveRecord::Migration[6.1]
  def self.up
    create_table :devices do |t|
      t.string :person_id
      t.string :device_type
      t.string :device_token

      t.timestamps
    end
  end

  def self.down
    drop_table :devices
  end
end
