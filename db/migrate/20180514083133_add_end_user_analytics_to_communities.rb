class AddEndUserAnalyticsToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :end_user_analytics, :boolean, :default => true
  end
end
