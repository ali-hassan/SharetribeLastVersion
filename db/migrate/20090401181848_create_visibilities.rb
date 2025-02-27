class CreateVisibilities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :visibilities do |t|
      t.integer :visible_object_id
      t.string :visible_object_type
      t.string :is_visible_to, :default => "everybody"

      t.timestamps
    end
  end

  def self.down
    drop_table :visibilities
  end
end
