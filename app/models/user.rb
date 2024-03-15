class User < ApplicationRecord
  has_many :posts
  has_many :comments

  # Validations
  validates :username, presence: true, uniqueness: true, length: { minimum: 3, maximum: 30 }
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence:true
end
