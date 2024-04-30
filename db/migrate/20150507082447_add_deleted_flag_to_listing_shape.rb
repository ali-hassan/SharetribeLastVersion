class AddDeletedFlagToListingShape < ActiveRecord::Migration[6.1]
  def change
    add_column :listing_shapes, :deleted, :boolean, after: :updated_at, default: false
  end
end
