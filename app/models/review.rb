class Review < ApplicationRecord
  RATINGS = %w[0 1 2 3 4 5]
  belongs_to :restaurant
  validates :content, :rating, presence: true
  validates :category, inclusion: { in: RATINGS }
  validates :rating, numericality: { only_integer: true }
end
