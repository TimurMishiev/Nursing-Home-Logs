class Individual < ApplicationRecord 
  validates :name, presence: true
  validates :bio, presence: true
 
has_many :daily_logs

has_many :individual_vitals_logs
 
end 