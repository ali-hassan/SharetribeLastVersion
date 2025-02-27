class CreateConversations < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :conversations do |t|
      t.string :title
      t.integer :listing_id

      t.timestamps
    end
  end

  def self.down
    drop_table :conversations
  end
end
