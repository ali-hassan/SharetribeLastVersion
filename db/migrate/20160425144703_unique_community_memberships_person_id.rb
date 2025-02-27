class UniqueCommunityMembershipsPersonId < ActiveRecord::Migration[6.1]
  def up
    remove_index :community_memberships, name: :memberships
    add_index :community_memberships, :person_id, unique: true
  end

  def down
    remove_index :community_memberships, :person_id
    add_index :community_memberships, [:person_id, :community_id], name: :memberships, unique: true

  end
end
