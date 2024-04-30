class AddStatusToCommunityMemberships < ActiveRecord::Migration[6.1]
  def change
    add_column :community_memberships, :status, :string, :null => false, :default => "accepted"
  end
end
