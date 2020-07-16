class IndividualVitalsLog < ApplicationRecord
  belongs_to :individual


  validates :temperature, presence: true
  validates :bloodpressure, presence: true
  validates :pulse, presence: true
end
