class AddMerchantIdToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :checkout_merchant_id, :string
  end
end
