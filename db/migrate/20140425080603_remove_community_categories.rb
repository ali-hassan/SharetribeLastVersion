class RemoveCommunityCategories < ActiveRecord::Migration[6.1]
  def up
    drop_table :community_categories
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
