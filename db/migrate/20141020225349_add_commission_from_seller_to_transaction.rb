class AddCommissionFromSellerToTransaction < ActiveRecord::Migration[6.1]
  def change
    add_column :transactions, :commission_from_seller, :integer, after: :current_state
  end
end
