class AddPollsEnabledToCommunities < ActiveRecord::Migration[6.1]
  def self.up
    add_column :communities, :polls_enabled, :boolean, :default => 0
  end

  def self.down
    remove_column :communities, :polls_enabled
  end
end
