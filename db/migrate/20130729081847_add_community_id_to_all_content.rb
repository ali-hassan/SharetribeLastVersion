class AddCommunityIdToAllContent < ActiveRecord::Migration[6.1]
  def change
    add_column :comments, :community_id, :integer
    add_column :conversations, :community_id, :integer
    add_column :feedbacks, :community_id, :integer
  end
end
