class AddTransactionProposalToConversations < ActiveRecord::Migration[6.1]
  def self.up
    add_column :conversations, :transaction_proposal, :boolean, :default => 1
  end

  def self.down
    remove_column :conversations, :transaction_proposal
  end
end
