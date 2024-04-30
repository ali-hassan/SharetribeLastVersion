class AddDeletedFlagToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :deleted, :boolean, default: false, after: :shipping_price_cents
  end
end
