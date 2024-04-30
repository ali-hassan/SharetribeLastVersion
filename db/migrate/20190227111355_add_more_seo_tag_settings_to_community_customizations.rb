class AddMoreSeoTagSettingsToCommunityCustomizations < ActiveRecord::Migration[6.1][5.1]
  def change
    add_column :community_customizations, :search_meta_title, :string
    add_column :community_customizations, :search_meta_description, :text

    add_column :community_customizations, :listing_meta_title, :string
    add_column :community_customizations, :listing_meta_description, :text

    add_column :community_customizations, :category_meta_title, :string
    add_column :community_customizations, :category_meta_description, :text

    add_column :community_customizations, :profile_meta_title, :string
    add_column :community_customizations, :profile_meta_description, :text
  end
end
