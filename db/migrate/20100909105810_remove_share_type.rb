class RemoveShareType < ActiveRecord::Migration[6.1][6.1]
  def self.up
    remove_column :listings, :share_type
  end

  def self.down
    add_column :listings, :share_type, :string
  end
end
