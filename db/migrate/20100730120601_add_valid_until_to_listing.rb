class AddValidUntilToListing < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :listings, :valid_until, :date
  end

  def self.down
    remove_column :listings, :valid_until
  end
end
