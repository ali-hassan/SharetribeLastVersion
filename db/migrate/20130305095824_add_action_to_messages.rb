class AddActionToMessages < ActiveRecord::Migration[6.1]
  def change
    add_column :messages, :action, :string
  end
end
