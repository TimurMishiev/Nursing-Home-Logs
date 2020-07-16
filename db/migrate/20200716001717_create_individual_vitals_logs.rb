class CreateIndividualVitalsLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :individual_vitals_logs do |t|
      t.string :temperature
      t.string :bloodpressure
      t.string :pulse
      t.integer :individual_id

      t.timestamps
    end
  end
end
