class AddPaymentProcessToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :payment_process, :string, limit: 31, default: "none"
  end
end
