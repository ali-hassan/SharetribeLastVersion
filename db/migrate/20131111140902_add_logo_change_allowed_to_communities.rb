class AddLogoChangeAllowedToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :logo_change_allowed, :boolean
  end
end
