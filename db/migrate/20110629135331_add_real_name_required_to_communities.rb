class AddRealNameRequiredToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :real_name_required, :boolean, :default => true
  end

  def self.down
    remove_column :communities, :real_name_required
  end
end
