class AddOldUnitTypeToTransactions < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :old_unit_type, :string, limit: 32, after: :unit_type
  end
end
