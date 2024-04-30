class AddEnableSocialShareButtonsToCommunities < ActiveRecord::Migration[6.1][5.2]
  def change
    add_column :communities, :enable_social_share_buttons, :boolean, default: false, null: false
  end
end
