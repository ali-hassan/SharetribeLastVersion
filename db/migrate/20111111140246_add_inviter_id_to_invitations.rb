class AddInviterIdToInvitations < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :invitations, :inviter_id, :string
  end

  def self.down
    remove_column :invitations, :inviter_id
  end
end
