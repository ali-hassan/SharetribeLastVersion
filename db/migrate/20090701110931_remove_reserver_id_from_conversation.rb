class RemoveReserverIdFromConversation < ActiveRecord::Migration[6.1][6.1]
  def self.up
    remove_column :conversations, :reserver_id
  end

  def self.down
    add_column :conversations, :reserver_id, :string
  end
end
