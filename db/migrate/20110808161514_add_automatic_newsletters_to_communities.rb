class AddAutomaticNewslettersToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :automatic_newsletters, :boolean, :default => true
  end

  def self.down
    remove_column :communities, :automatic_newsletters
  end
end
