class AddDeletedToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :deleted, :boolean, default: false
  end
end
