class AddLocaleToPerson < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :people, :locale, :string, :default => "fi"
  end

  def self.down
    remove_column :people, :locale
  end
end
