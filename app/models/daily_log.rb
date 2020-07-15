class DailyLog < ApplicationRecord 
  belongs_to :user
  belongs_to :individual
  


  validates :shift, presence: true
  validates :notes, presence: true, length: {minimum: 10, maximum: 400}
end 