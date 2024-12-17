class AddDeletedToInvitations < ActiveRecord::Migration[6.1][5.2]
  def change
    add_column :invitations, :deleted, :boolean, default: false
  end
end
