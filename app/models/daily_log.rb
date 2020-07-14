class DailyLog < ApplicationRecord 
  belongs_to :user
  has_many :daily_log_daily_activities
  has_many :daily_activities, through: :daily_log_daily_activities
  
  validates :shift, presence: true
  validates :notes, presence: true, length: {minimum: 10, maximum: 400}
end 