class PopulateMarketplaceIdent < ActiveRecord::Migration[6.1]
  def up
    execute("UPDATE communities SET ident = domain")
  end

  def down
  end
end
