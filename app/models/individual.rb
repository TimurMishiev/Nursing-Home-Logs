class Individual < ApplicationRecord 
  validates :name, presence: true
  validates :bio, presence: true

  has_many :daily_log_individuals
  has_many :daily_logs, through: :daily_log_individuals
end 