class AddNightSelectorToNightUnit < ActiveRecord::Migration[6.1]
  def up
    exec_update("UPDATE listing_units SET quantity_selector = 'night' WHERE unit_type = 'night'", "Listing units quantity selector", [])
  end

  def down
    exec_update("UPDATE listing_units SET quantity_selector = 'number' WHERE unit_type = 'night'", "Listing units quantity selector", [])
  end
end
