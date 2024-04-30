class AddAboutPageContentToCommunityCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_column :community_customizations, :about_page_content, :text
  end
end
