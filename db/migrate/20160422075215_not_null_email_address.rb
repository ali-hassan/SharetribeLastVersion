class NotNullEmailAddress < ActiveRecord::Migration[6.1]
  def change
    change_column_null :emails, :address, false
  end
end
