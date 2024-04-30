class AddPlanLevelToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :plan_level, :integer, :default => 0
  end
end
