class ChangeCommunityCurrencyNotToBeNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :communities, :currency, false
  end
end
