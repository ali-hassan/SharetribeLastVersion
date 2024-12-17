class AddWelcomeEmailContentToCommunityCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_column :community_customizations, :welcome_email_content, :text
  end
end
