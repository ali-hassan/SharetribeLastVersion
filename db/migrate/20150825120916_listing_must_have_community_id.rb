class ListingMustHaveCommunityId < ActiveRecord::Migration[6.1]
  def up
    change_column :listings, :community_id, :integer, null: false
  end

  def down
    change_column :listings, :community_id, :integer, null: true
  end
end
