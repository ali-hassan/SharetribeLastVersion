class AddStorefrontLabelToCommunityCustomizations < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :community_customizations, :storefront_label, :string
  end
end
