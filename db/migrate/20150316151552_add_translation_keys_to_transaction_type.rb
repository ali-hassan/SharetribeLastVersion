class AddTranslationKeysToTransactionType < ActiveRecord::Migration[6.1]
  def change
    add_column :transaction_types, :name_tr_key, :string
    add_column :transaction_types, :action_button_tr_key, :string
  end
end
