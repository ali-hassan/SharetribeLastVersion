class AddLabelToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :label, :string
  end

  def self.down
    remove_column :communities, :label
  end
end
