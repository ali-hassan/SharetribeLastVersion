class PopulateRedirectToDomain < ActiveRecord::Migration[6.1]
  def up
    execute("UPDATE communities SET redirect_to_domain = true WHERE domain IS NOT NULL")
  end

  def down
    execute("UPDATE communities SET redirect_to_domain = false")
  end
end
