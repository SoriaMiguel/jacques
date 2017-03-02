class User < ApplicationRecord
  has_secure_password
  has_secure_token :api_token
  # validates :username, presence: true
  validates :email, presence: true
  # validates :api_token, presence: true
end
