class ChangeFbConnectDefaultToFalse < ActiveRecord::Migration[6.1][5.2]
  def change
    change_column :communities, :facebook_connect_enabled, :boolean, default: false
  end
end
