class CreateTableGroupsFavors < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :groups_favors, :id => false do |t|
      t.string :group_id
      t.integer :favor_id
    end
  end

  def self.down
    drop_table :groups_favors
  end
end
