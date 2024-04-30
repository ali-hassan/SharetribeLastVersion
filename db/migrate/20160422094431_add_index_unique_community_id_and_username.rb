class AddIndexUniqueCommunityIdAndUsername < ActiveRecord::Migration[6.1]
  def change
    add_index :people, [:username, :community_id], unique: true
  end
end
