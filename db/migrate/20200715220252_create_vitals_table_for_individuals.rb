class CreateVitalsTableForIndividuals < ActiveRecord::Migration[6.0]
  def change
    create_table :vitals_table_for_individuals do |t|
      t.string :temperature
      t.string :blood_pressure
      t.string :pulse
      t.integer :individual_id
    end
  end
end
