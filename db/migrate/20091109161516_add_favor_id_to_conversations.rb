class AddFavorIdToConversations < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :conversations, :favor_id, :integer
  end

  def self.down
    remove_column :conversations, :favor_id
  end
end
