class AddShareTypeToListings < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :listings, :share_type, :string
  end

  def self.down
    remove_column :listings, :share_type
  end
end
