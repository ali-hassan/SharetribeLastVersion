class ChangePriceCurrencyToCurrency < ActiveRecord::Migration[6.1]
  def up
    rename_column :listings, :price_currency, :currency
  end

  def down
    rename_column :listings, :currency, :price_currency
  end
end
