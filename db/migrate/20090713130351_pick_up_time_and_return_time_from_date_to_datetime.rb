class PickUpTimeAndReturnTimeFromDateToDatetime < ActiveRecord::Migration[6.1][6.1]
  def self.up
    change_column :conversations, :pick_up_time, :datetime
    change_column :conversations, :return_time, :datetime 
  end

  def self.down
    change_column :conversations, :pick_up_time, :date
    change_column :conversations, :return_time, :date
  end
end
