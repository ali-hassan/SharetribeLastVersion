class CreateCategoryTransactionTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :category_transaction_types do |t|
      t.integer :category_id
      t.integer :transaction_type_id

      t.timestamps
    end
  end
end
