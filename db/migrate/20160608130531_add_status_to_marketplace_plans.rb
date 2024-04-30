class AddStatusToMarketplacePlans < ActiveRecord::Migration[6.1]
  def change
    add_column :marketplace_plans, :status, :string, limit: 22, after: :plan_level
  end
end
