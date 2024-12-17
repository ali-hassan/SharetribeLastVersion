class AddCanPostListingsToCommunityMemberships < ActiveRecord::Migration[6.1]
  def change
    add_column :community_memberships, :can_post_listings, :boolean, :default => false
  end
end
