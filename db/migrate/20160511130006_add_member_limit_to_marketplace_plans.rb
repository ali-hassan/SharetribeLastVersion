class AddMemberLimitToMarketplacePlans < ActiveRecord::Migration[6.1]
  def change
    add_column :marketplace_plans, :member_limit, :integer, default: nil, null: true, after: :features
  end
end
