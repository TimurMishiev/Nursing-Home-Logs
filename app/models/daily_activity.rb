class DailyActivity < ApplicationRecord 
  validates :title, presence: true

  has_many :daily_log_daily_activities
  has_many :daily_logs, through: :daily_log_daily_activities

end 