class RemoveReceiverIdAndListingIdFromMessage < ActiveRecord::Migration[6.1][6.1]
  def self.up
    remove_column :messages, :receiver_id
    remove_column :messages, :listing_id
  end

  def self.down
    add_column :messages, :receiver_id, :string
    add_column :messages, :listing_id, :integer
  end
end
