class CreatePollOptions < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :poll_options do |t|
      t.string :label
      t.integer :poll_id
      t.float :percentage

      t.timestamps
    end
  end

  def self.down
    drop_table :poll_options
  end
end
