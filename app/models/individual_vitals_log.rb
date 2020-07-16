class IndividualVitalsLog < ApplicationRecord
  belongs_to :individual
  belongs_to :user

  validates :temperature, presence: true
  validates :bloodpressure, presence: true
  validates :pulse, presence: true
end
