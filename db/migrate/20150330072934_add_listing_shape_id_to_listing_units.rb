class AddListingShapeIdToListingUnits < ActiveRecord::Migration[6.1]
  def change
    add_column :listing_units, :listing_shape_id, :integer, after: :transaction_type_id
  end
end
