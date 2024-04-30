class AddFacebookConnectEnabledToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :facebook_connect_enabled, :boolean, :default => true
  end
end
