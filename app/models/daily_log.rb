class DailyLog < ApplicationRecord 
  validates :shift, presence: true
  validates :notes, presence: true, length: {minimum: 10, maximum: 400}
end 