class AddPaypalEnabledToCommunity < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :paypal_enabled, :boolean, null: false, default: false
  end
end
