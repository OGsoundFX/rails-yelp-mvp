class Restaurant < ApplicationRecord
  categories = ["chinese", "italian", "japanese", "french", "belgian"]
  has_many :reviews, dependent: :destroy
  validates :name, presence: true, length: { minimum: 5 }
  validates :address, presence: true
  validates :category, presence: true, inclusion: { in: categories, message: 'Category is not valid' }
end
