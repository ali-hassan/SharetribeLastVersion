class RemovePlanFromCommunity < ActiveRecord::Migration[6.1]
  def up
    remove_column :communities, :plan
  end

  def down
    add_column :communities, :plan, :string
  end
end
