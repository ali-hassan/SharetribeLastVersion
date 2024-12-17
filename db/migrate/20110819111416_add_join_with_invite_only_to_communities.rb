class AddJoinWithInviteOnlyToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :join_with_invite_only, :boolean, :default => false
  end

  def self.down
    remove_column :communities, :join_with_invite_only
  end
end
