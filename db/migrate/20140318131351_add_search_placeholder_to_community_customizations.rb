class AddSearchPlaceholderToCommunityCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_column :community_customizations, :search_placeholder, :string
  end
end
