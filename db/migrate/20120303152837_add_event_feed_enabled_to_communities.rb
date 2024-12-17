class AddEventFeedEnabledToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :event_feed_enabled, :boolean, :default => true
  end

  def self.down
    remove_column :communities, :event_feed_enabled
  end
end
