class User < ApplicationRecord
  has_secure_password
  has_many :posts
  # username here should be name email - DB to be amended
  # # screen name is username
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true
  validates :username, presence: true, uniqueness: true
  validates :name, presence: true
end
