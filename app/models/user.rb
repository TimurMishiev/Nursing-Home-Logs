class User < ApplicationRecord 
  has_many :daily_logs

  validates :username, presence: true, 
                      uniqueness: { case_sensitive: false }, 
                      length: {minimum: 3, maximum: 25}
end 