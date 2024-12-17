class RemoveMessageActions < ActiveRecord::Migration[6.1]
  def change
    remove_column :messages, :action
  end
end
