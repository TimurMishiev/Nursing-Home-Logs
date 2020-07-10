class CreateDailyLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_logs do |t|
      t.string :shift
      t.string :notes

      t.timestamps

    end
  end
end
