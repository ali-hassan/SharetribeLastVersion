class RemoveCosCookieFromPerson < ActiveRecord::Migration[6.1][6.1]
  def self.up
    remove_column :people, :cos_cookie
  end

  def self.down
    add_column :people, :cos_cookie, :string
  end
end

