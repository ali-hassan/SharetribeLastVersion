class AddQueueToDelayedJobs < ActiveRecord::Migration[6.1]
  def self.up
    add_column :delayed_jobs, :queue, :string
  end

  def self.down
    remove_column :delayed_jobs, :queue
  end
end
