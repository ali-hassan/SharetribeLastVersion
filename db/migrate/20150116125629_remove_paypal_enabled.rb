class RemovePaypalEnabled < ActiveRecord::Migration[6.1]
  def up
    remove_column :communities, :paypal_enabled
  end

  def down
    add_column :communities, :paypal_enabled, :boolean, default: false, null: false
  end
end
