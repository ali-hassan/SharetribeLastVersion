class AddDistanceUnitToMarketplaceConfigurations < ActiveRecord::Migration[6.1]
  def change
    add_column :marketplace_configurations, :distance_unit, :string, null: false, default: :metric, after: :main_search
  end
end
