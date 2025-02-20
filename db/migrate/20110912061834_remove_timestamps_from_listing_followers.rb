class RemoveTimestampsFromListingFollowers < ActiveRecord::Migration[6.1][6.1]
  def self.up
    remove_column :listing_followers, :created_at
    remove_column :listing_followers, :updated_at
  end

  def self.down
    add_column :listing_followers, :created_at, :datetime
    add_column :listing_followers, :updated_at, :datetime
  end
end
