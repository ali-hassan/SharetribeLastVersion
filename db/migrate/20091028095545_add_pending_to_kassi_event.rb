class AddPendingToKassiEvent < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :kassi_events, :pending, :integer, :default => 0
  end

  def self.down
    remove_column :kassi_events, :pending
  end
end
