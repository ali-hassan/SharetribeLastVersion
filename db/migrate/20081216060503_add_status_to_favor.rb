class AddStatusToFavor < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :favors, :status, :string, :default => "enabled"
  end

  def self.down
    remove_column :favors, :status
  end
end
