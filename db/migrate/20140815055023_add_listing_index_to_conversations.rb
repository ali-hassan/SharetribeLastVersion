class AddListingIndexToConversations < ActiveRecord::Migration[6.1][6.1]
  def change
    add_index :conversations, :listing_id
  end
end
