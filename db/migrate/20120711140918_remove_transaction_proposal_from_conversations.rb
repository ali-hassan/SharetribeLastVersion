class RemoveTransactionProposalFromConversations < ActiveRecord::Migration[6.1]
  def self.up
    remove_column :conversations, :transaction_proposal
  end

  def self.down
    add_column :conversations, :transaction_proposal, :boolean, :default => 1
  end
end
