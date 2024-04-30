class AddPreferencesToPerson < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :people, :preferences, :string
  end

  def self.down
    remove_column :people, :preferences
  end
end
