class AddTitleToPaymentRows < ActiveRecord::Migration[6.1]
  def change
    add_column :payment_rows, :title, :string
  end
end
