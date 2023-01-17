class User < ApplicationRecord
  has_secure_password
  has_many :posts
  # username here should be name email - DB to be amended
  # # screen name is username
  validates :username, presence: true, uniqueness: true
  validates :password, presence: true
  validates :screen_name, presence: true, uniqueness: true
  validates :real_name, presence: true
end
