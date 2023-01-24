class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  validates :body, presence: true
  validates :body, length: { minimum: 5, maximum: 140 }
end
