class AddIndecesToPlanTables < ActiveRecord::Migration[6.1]
  def change
    add_index :marketplace_trials, :community_id
    add_index :marketplace_trials, :created_at

    add_index :marketplace_plans, :community_id
    add_index :marketplace_plans, :created_at
  end
end
