class RemoveOldProcessColumnFromTransactionProcesses < ActiveRecord::Migration[6.1]
  def change
    remove_column :transaction_processes, :old_process, :string, limit: 32, after: :updated_at
  end
end
