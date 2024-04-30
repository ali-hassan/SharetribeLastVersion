class AddPrivateToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :private, :boolean, :default => 0
  end

  def self.down
    remove_column :communities, :private
  end
end
