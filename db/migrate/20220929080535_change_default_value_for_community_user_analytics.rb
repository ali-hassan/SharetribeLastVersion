class ChangeDefaultValueForCommunityUserAnalytics < ActiveRecord::Migration[6.1][5.2]
  def change
    change_column_default :communities, :end_user_analytics, false
  end
end
