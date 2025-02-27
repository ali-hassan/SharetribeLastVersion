class AddCloseNotificationSentToListing < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :listings, :close_notification_sent, :boolean, :default => 0
  end

  def self.down
    remove_column :listings, :close_notification_sent
  end
end
