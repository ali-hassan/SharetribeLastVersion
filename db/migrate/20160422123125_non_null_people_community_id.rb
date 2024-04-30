class NonNullPeopleCommunityId < ActiveRecord::Migration[6.1]
  def change
    change_column_null :people, :community_id, false
  end
end
