class CreateTransactionTypes < ActiveRecord::Migration[6.1]
  def change
    create_table :transaction_types do |t|
      t.string :type
      t.integer :community_id
      t.integer :sort_priority
      t.boolean :price_field

      t.timestamps
    end
  end
end
