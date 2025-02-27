class AddLastSentAtAndLastReceivedAtToPersonConversation < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :person_conversations, :last_sent_at, :datetime
    add_column :person_conversations, :last_received_at, :datetime
  end

  def self.down
    remove_column :person_conversations, :last_sent_at
    remove_column :person_conversations, :last_received_at
  end
end
