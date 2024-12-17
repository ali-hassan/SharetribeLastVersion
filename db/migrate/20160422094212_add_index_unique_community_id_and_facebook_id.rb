class AddIndexUniqueCommunityIdAndFacebookId < ActiveRecord::Migration[6.1]
  def change
    add_index :people, [:facebook_id, :community_id], unique: true
  end
end
