class AddFeedbackToAdminToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :feedback_to_admin, :boolean, :default => 0
  end

  def self.down
    remove_column :communities, :feedback_to_admin
  end
end
