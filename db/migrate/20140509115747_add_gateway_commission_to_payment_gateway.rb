class AddGatewayCommissionToPaymentGateway < ActiveRecord::Migration[6.1]
  def change
    add_column :payment_gateways, :gateway_commission_percentage, :int
    add_money :payment_gateways, :gateway_commission_fixed, amount: { null: true, default: nil }
  end
end
