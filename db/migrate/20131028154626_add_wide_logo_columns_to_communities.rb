class AddWideLogoColumnsToCommunities < ActiveRecord::Migration[6.1]
  def self.up
      add_attachment :communities, :wide_logo
    end

    def self.down
      remove_attachment :communities, :wide_logo
    end
end
