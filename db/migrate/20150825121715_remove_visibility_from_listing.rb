class RemoveVisibilityFromListing < ActiveRecord::Migration[6.1]
  def up
    remove_column :listings, :visibility
  end

  def down
    add_column :listings, :visibility, :string, after: :sort_date, default: "this_community"
  end
end
