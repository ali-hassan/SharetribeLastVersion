class AddFeaturesToMarketplacePlans < ActiveRecord::Migration[6.1]
  def change
    add_column :marketplace_plans, :features, :text, after: :plan_level
  end
end
