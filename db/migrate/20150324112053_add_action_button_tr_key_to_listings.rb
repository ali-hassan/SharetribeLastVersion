class AddActionButtonTrKeyToListings < ActiveRecord::Migration[6.1]
  def change
    add_column :listings, :action_button_tr_key, :string, after: :shape_name_tr_key
  end
end
