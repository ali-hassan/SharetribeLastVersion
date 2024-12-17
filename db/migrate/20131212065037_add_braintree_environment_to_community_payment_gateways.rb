class AddBraintreeEnvironmentToCommunityPaymentGateways < ActiveRecord::Migration[6.1]
  def change
    add_column :community_payment_gateways, :braintree_environment, :string, :after => :payment_gateway_id
  end
end
