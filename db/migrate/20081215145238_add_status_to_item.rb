class AddStatusToItem < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :items, :status, :string, :default => "enabled"
  end

  def self.down
    remove_column :items, :status
  end
end
