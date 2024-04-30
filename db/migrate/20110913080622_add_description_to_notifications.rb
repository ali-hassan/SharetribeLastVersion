class AddDescriptionToNotifications < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :notifications, :description, :string
  end

  def self.down
    remove_column :notifications, :description
  end
end
