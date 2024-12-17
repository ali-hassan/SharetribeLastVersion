class AddCommunityIdToCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :categories, :community_id, :integer
  end
end
