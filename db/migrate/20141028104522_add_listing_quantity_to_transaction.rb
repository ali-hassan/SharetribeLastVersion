class AddListingQuantityToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :listing_quantity, :int, default: 1
  end
end
