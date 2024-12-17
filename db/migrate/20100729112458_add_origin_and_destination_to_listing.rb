class AddOriginAndDestinationToListing < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :listings, :origin, :string
    add_column :listings, :destination, :string
  end

  def self.down
    remove_column :listings, :origin
    remove_column :listings, :destination
  end
end
