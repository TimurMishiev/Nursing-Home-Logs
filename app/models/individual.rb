class Individual < ApplicationRecord 
  validates :name, presence: true
  validation :bio, precence: true
end 