class OrderPermissionScopeCanBeNull < ActiveRecord::Migration[6.1]
  def up
    change_column_null :order_permissions, :scope, true
  end

  def down
    change_column_null :order_permissions, :scope, false
  end
end
