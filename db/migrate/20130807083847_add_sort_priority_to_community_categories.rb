class AddSortPriorityToCommunityCategories < ActiveRecord::Migration[6.1]
  def change
    add_column :community_categories, :sort_priority, :integer, :default => 0
  end
end
