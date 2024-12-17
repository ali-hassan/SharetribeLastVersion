class AddTransactionTypeToShareTypes < ActiveRecord::Migration[6.1]
  def change
    add_column :share_types, :transaction_type, :string
  end
end
