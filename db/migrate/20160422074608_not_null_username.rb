class NotNullUsername < ActiveRecord::Migration[6.1]
  def change
    change_column_null :people, :username, false
  end
end
