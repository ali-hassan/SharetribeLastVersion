class AddNameToCommunityCustomizations < ActiveRecord::Migration[6.1]
  def change
    add_column :community_customizations, :name, :string, :after => :locale
  end
end
