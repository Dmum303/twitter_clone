class Post < ApplicationRecord
  has_many :comments

  belongs_to :user
  validates :body, presence: true
  validates :body, length: { minimum: 5, maximum: 140 }
end
