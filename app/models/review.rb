class Review < ApplicationRecord
  belongs_to :user
  belongs_to :concert
  validates :title, presence: true
  validates :body, presence: true
  validates :title, length: { in: 1..30 }
  validates :body, length: { in: 1..200 }
end
