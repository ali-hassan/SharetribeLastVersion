class AddSortPriorityToMenuLink < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :menu_links, :sort_priority, :int, default: 0
  end
end
