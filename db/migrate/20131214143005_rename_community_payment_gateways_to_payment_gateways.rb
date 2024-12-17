class RenameCommunityPaymentGatewaysToPaymentGateways < ActiveRecord::Migration[6.1]
  def up
    rename_table :community_payment_gateways, :payment_gateways
  end

  def down
    rename_table :payment_gateways, :community_payment_gateways
  end
end
