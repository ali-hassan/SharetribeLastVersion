class CreateItems < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :items do |t|
      t.string :owner_id
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :items
  end
end
