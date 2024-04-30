class RemoveTimesUsedFromAuthenticationToken < ActiveRecord::Migration[6.1]
  def up
    remove_column :auth_tokens, :times_used
  end

  def down
    add_column :auth_tokens, :times_used, :integer, default: 0
  end
end
