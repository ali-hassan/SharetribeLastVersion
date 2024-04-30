class AddQuantityToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :quantity, :string
  end
end
