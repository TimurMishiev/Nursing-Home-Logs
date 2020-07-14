class CreateDailyLogIndividuals < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_log_individuals do |t|
      t.integer :individual_id
      t.integer :daily_log_id

    end
  end
end
