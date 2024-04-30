class AddPriceToCommunityCategories < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :community_categories, :price, :boolean, :default => false
  end
end
