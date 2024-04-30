class AddListingShapeIdToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :listing_shape_id, :integer, null: false, after: :transaction_type_id
    add_index :listings, :listing_shape_id
  end
end
