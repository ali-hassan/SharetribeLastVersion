class RearrangeCommunityUuidBytes < ActiveRecord::Migration[6.1][6.1]
  def up
    mysql_conn = ActiveRecord::Base.connection.raw_connection

    Community.pluck(:id).each_slice(1000) { |ids|
      ActiveRecord::Base.transaction do
        ids.each { |id|
          statement = mysql_conn.prepare("UPDATE communities SET uuid=? where id=?")
          statement.execute(UUIDUtils.create_raw, id)
        }
      end
    }
  end
end
