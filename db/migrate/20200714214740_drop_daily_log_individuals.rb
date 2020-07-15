class DropDailyLogIndividuals < ActiveRecord::Migration[6.0]
  def change
    drop_table :daily_log_individuals
  end
end
