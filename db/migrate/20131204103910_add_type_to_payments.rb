class AddTypeToPayments < ActiveRecord::Migration[6.1]
  def change
    add_column :payments, :type, :string, default: "CheckoutPayment"
  end
end
