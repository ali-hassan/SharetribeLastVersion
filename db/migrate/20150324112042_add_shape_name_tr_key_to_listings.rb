class AddShapeNameTrKeyToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :shape_name_tr_key, :string, after: :transaction_process_id
  end
end
