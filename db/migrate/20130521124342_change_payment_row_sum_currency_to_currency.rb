class ChangePaymentRowSumCurrencyToCurrency < ActiveRecord::Migration[6.1]
  def up
    rename_column :payment_rows, :sum_currency, :currency
  end

  def down
    rename_column :payment_rows, :currency, :sum_currency
  end
end
