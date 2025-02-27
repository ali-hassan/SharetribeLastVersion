class SetPriceQuantityPlaceholderNullToCommunitiesThatUseUnits < ActiveRecord::Migration[6.1]
  def up
    execute("
      UPDATE listing_shapes
      LEFT JOIN listing_units ON listing_units.listing_shape_id = listing_shapes.id
      SET listing_shapes.price_quantity_placeholder = NULL
      WHERE listing_shapes.price_quantity_placeholder IS NOT NULL AND listing_units.id IS NOT NULL
")
  end

  def down
    # Deleting data, there's no way to get it back.
  end
end
