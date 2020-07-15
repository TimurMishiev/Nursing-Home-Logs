class AddHoursWorkedToToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :worked_to, :string
  end
end
