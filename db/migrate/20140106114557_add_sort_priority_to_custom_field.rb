class AddSortPriorityToCustomField < ActiveRecord::Migration[6.1]
  def change
    add_column :custom_fields, :sort_priority, :integer, :after => :type
  end
end
