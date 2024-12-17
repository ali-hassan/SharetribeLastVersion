class AddCurrentStateToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column(:transactions, :current_state, :string)
  end
end
