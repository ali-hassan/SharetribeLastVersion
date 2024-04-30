class AddCustomHeadScriptToCommunityCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_column :community_customizations, :custom_head_script, :text
  end
end
