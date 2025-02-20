class CreateCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :communities do |t|
      t.string :name
      t.string :domain

      t.timestamps
    end
  end

  def self.down
    drop_table :communities
  end
end
