class AddPaymentsInUseToCommunities < ActiveRecord::Migration[6.1]
  def change
    add_column :communities, :payments_in_use, :boolean, :default => false
  end
end
