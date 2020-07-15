class AddTimestampsToDailyLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :daily_logs, :created_at, :datetime
    add_column :daily_logs, :updated_at, :datetime
  end
end
