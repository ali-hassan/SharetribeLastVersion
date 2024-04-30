class AddMessageToInvitations < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :invitations, :message, :text
  end

  def self.down
    remove_column :invitations, :message
  end
end
