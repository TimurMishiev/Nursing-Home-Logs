class DropDailyLogDailyActivities < ActiveRecord::Migration[6.0]
  def change
    drop_table :daily_log_daily_activities
  end
end
