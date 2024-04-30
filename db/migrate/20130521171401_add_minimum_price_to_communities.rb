class AddMinimumPriceToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :minimum_price_cents, :integer
  end
end
