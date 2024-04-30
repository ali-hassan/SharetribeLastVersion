class CreateShareTypes < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :share_types do |t|
      t.integer :listing_id
      t.string :name
    end
  end

  def self.down
    drop_table :share_types
  end
end
