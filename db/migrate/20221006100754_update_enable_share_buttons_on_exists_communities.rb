class UpdateEnableShareButtonsOnExistsCommunities < ActiveRecord::Migration[6.1][5.2]
  def change
    Community.update_all(enable_social_share_buttons: true)
  end
end
