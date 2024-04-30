class AddUnitTypeToListing < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :unit_type, :string, limit: 32, after: :quantity
  end
end
