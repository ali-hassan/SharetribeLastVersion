class AddMangopayIdToPeople < ActiveRecord::Migration[6.1]
  def change
    add_column :people, :mangopay_id, :string
  end
end
