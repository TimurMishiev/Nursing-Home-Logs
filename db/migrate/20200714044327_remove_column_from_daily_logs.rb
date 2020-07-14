class RemoveColumnFromDailyLogs < ActiveRecord::Migration[6.0]
  def change
    remove_column :daily_logs, :individual_id, :integer
  end
end
