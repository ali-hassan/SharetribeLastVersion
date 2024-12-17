class AddAssignmentToCustomFields < ActiveRecord::Migration[6.1][6.1]
  def change
    add_column :custom_fields, :assignment, :integer, default: 0
  end
end
