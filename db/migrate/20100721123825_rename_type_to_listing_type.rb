class RenameTypeToListingType < ActiveRecord::Migration[6.1][6.1]
  def self.up
    remove_column :listings, :type
    add_column :listings, :listings_type, :string
  end

  def self.down
    remove_column :listings, :listings_type
    add_column :listings, :type, :string
  end
end
