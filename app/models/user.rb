class User < ApplicationRecord 
  has_many :daily_logs
  has_many :individuals, through: :daily_logs
  

  validates :username, presence: true, 
                      uniqueness: { case_sensitive: false }, 
                      length: {minimum: 3, maximum: 25}
  has_secure_password

  def self.create_by_google_omniauth(auth)
    self.find_or_create_by(username: auth[:info][:email]) do |user|
      user.password = SecureRandom.hex 
    end 
  end 
end 