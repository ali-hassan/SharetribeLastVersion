class AddCreatedDatesToIndex < ActiveRecord::Migration[6.1]
  def change
    add_index :transactions, :last_transition_at
    add_index :conversations, :last_message_at
  end
end
