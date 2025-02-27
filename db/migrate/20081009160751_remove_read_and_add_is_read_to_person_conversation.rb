class RemoveReadAndAddIsReadToPersonConversation < ActiveRecord::Migration[6.1][6.1]
  def self.up
    remove_column :person_conversations, :read
    add_column :person_conversations, :is_read, :integer, :default => 0
  end

  def self.down
    remove_column :person_conversations, :is_read
    add_column :person_conversations, :read, :boolean
  end
end
