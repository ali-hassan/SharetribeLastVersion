class MonetizeListing < ActiveRecord::Migration[6.1]
  def change
    add_money :listings, :price, :default => nil
  end
end
