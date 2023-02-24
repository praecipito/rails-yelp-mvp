class Restaurant < ApplicationRecord
  CATEGORIES = %w[chinese italian japanese french belgian]
  has_many :reviews, dependent: :destroy
  validates :category, inclusion: { in: CATEGORIES }
  validates :name, :address, :category, presence: true
end
