class ChangePollOptionPercentageDefaultTo0 < ActiveRecord::Migration[6.1][6.1]
  def self.up
    change_column_default(:poll_options, :percentage, 0.0)
  end

  def self.down
    change_column_default(:poll_options, :percentage, nil)
  end
end
