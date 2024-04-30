class AddPersonIdToSettings < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :settings, :person_id, :string
  end

  def self.down
    remove_column :settings, :person_id
  end
end
