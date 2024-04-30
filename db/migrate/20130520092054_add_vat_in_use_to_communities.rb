class AddVatInUseToCommunities < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :communities, :vat, :integer
  end
end
