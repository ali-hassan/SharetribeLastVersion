class AddLimitPriorityLinksToMarketplaceConfigurations < ActiveRecord::Migration[6.1]
  def change
    add_column :marketplace_configurations, :limit_priority_links, :integer, null: true, after: :distance_unit
  end
end
