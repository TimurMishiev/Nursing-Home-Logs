class CreateDailyLogDailyActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_log_daily_activities do |t|
      t.integer :daily_log_id
      t.integer :daily_activity_id
    end
  end
end
