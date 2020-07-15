class AddHoursWorkedFromToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :worked_from, :string
  end
end
