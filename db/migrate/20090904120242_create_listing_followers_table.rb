class CreateListingFollowersTable < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :listing_followers do |t|
      t.string :person_id
      t.integer :listing_id

      t.timestamps
    end
  end

  def self.down
    drop_table :listing_followers
  end
end
