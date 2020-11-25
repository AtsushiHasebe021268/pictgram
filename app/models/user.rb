class User < ApplicationRecord
  validates :name, presence: true, length: { maximum: 15}
  validates :email, presence: true, length: { maximum: 300 }, format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i } 
  VALID_PASSWORD_REGEX = /\A[a-z\d]{8,32}+\z/i
  validates :password, format: { with: VALID_PASSWORD_REGEX }

  has_secure_password
end 
