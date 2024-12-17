class AddIsAdminToPerson < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :people, :is_admin, :integer, :default => 0
  end

  def self.down
    remove_column :people, :is_admin
  end
end
