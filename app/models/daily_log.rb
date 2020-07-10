class DailyLog < ApplicationRecord 
  validates :shift, presence: true
end 