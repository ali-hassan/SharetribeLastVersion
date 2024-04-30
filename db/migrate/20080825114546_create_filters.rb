class CreateFilters < ActiveRecord::Migration[6.1][6.1]
  def self.up
    create_table :filters do |t|
      t.string :person_id
      t.text :keywords
      t.string :category

      t.timestamps
    end
  end

  def self.down
    drop_table :filters
  end
end
