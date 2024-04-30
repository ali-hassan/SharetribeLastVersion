class AddCountryCodeToShippingAddress < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :shipping_addresses, :country_code, :string, limit: 8
  end
end
