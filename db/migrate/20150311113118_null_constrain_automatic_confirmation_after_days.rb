class NullConstrainAutomaticConfirmationAfterDays < ActiveRecord::Migration[6.1]
  def up
    change_column :transactions, :automatic_confirmation_after_days, :int, null: false
  end

  def down
    change_column :transactions, :automatic_confirmation_after_days, :int, null: true
  end
end
