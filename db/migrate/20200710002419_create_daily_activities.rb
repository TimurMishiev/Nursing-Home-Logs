class CreateDailyActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :daily_activities do |t|
      t.string :title
      t.string :description

    end
  end
end
