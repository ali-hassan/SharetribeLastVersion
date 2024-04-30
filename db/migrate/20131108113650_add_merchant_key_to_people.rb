class AddMerchantKeyToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :checkout_merchant_key, :string
  end
end
