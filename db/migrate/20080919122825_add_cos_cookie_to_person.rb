class AddCosCookieToPerson < ActiveRecord::Migration[6.1][6.1]
  def self.up
      add_column :people, :cos_cookie, :string
  end

  def self.down
      remove_column :people, :cos_cookie
  end
end
