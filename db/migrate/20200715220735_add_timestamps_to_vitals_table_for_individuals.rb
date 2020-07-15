class AddTimestampsToVitalsTableForIndividuals < ActiveRecord::Migration[6.0]
  def change
    add_column :vitals_table_for_individuals, :created_at, :datetime
    add_column :vitals_table_for_individuals, :updated_at, :datetime
  end
end
