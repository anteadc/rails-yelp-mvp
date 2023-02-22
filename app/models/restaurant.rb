class Restaurant < ApplicationRecord
  VALID_CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]
  validates :name, :address, :category, presence: true
  validates :category, inclusion: { in: VALID_CATEGORIES }

  # def valid_category
  #   if !VALID_CATEGORIES.include?(category)
  #     errors.add(:category, "#{category} is not a valid category")
  #   end
  # end

  has_many :reviews, dependent: :destroy
end
