class AddTermsPageContentAndPrivacyPageContentToCommunityCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_column :community_customizations, :terms_page_content, :text
    add_column :community_customizations, :privacy_page_content, :text
  end
end
