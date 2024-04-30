class AddPricingDataToCommunities < ActiveRecord::Migration[6.1]
  def self.up
    add_column :communities, :user_limit, :integer
    add_column :communities, :monthly_price_in_euros, :float
  end

  def self.down
    remove_column :communities, :monthly_price_in_euros
    remove_column :communities, :user_limit
  end
end
