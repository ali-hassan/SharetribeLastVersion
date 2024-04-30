class AddAmountToItems < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :items, :amount, :integer, :default => 1
  end

  def self.down
    remove_column :items, :amount
  end
end
