class RemoveOldUnitTypeColumnFromTransactions < ActiveRecord::Migration[6.1][6.1]
  def change
    remove_column :transactions, :old_unit_type, :string, limit: 32, after: :unit_type
  end
end
