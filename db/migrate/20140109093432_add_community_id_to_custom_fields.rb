class AddCommunityIdToCustomFields < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_fields, :community_id, :integer
  end
end
