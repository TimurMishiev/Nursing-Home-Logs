class AddIndividualIdToDailyLogs < ActiveRecord::Migration[6.0]
  def change
    add_column :daily_logs, :individual_id, :int
  end
end
