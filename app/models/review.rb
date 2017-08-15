class Review < ApplicationRecord
  belongs_to :restaurant

  validates :rating, presence: true, numericality: true, inclusion: { in: [1..5] }
  validates :body, presence: true, length: { in: 15..500 }
end
