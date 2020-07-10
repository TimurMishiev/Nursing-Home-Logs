class RemoveTimestampsFromDailyLog < ActiveRecord::Migration[6.0]
  def change
    remove_column :daily_logs, :created_at, :string
    remove_column :daily_logs, :updated_at, :string
  end
end
