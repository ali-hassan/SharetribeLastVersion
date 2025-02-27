class PopulateMarketplaceConfigurations < ActiveRecord::Migration[6.1]
  def up
    execute("
      INSERT INTO marketplace_configurations (community_id, main_search, created_at, updated_at)
      SELECT c.id, 'keyword', NOW(), NOW()
      FROM communities c;
    ")
  end

  def down
    execute("
      DELETE FROM marketplace_configurations;
    ")
  end
end
