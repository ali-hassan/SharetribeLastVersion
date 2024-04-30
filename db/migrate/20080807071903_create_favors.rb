class CreateFavors < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :favors do |t|
      t.string :owner_id
      t.string :title
      t.text :description
      t.string :payment

      t.timestamps
    end
  end

  def self.down
    drop_table :favors
  end
end
