class ChangeListingVisibilityDefaultValue < ActiveRecord::Migration[6.1]
  def up
    change_column :listings, :visibility, :string, :default => "this_community"
  end

  def down
    change_column :listings, :visibility, :string, :default => "everybody"
  end
end
