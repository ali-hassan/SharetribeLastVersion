class AddAllowFreeConversationsFlagToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :allow_free_conversations, :boolean, default: true
  end
end
