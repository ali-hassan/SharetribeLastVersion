class CreateContactRequests < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :contact_requests do |t|
      t.string :email

      t.timestamps
    end
  end

  def self.down
    drop_table :contact_requests
  end
end
