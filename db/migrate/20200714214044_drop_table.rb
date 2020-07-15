class DropTable < ActiveRecord::Migration[6.0]
  def change
    
      def up
        drop_table :daily_log_daily_activities
      end
    
      def down
        raise ActiveRecord::IrreversibleMigration
      end
    end
 
end
