class AddSelectWhetherNameIsShownToEverybodyToCommunities < ActiveRecord::Migration[6.1][6.1]
  def self.up
    add_column :communities, :select_whether_name_is_shown_to_everybody, :boolean, :default => 0
  end

  def self.down
    remove_column :communities, :select_whether_name_is_shown_to_everybody
  end
end
