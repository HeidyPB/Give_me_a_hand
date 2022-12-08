class Category < ApplicationRecord
  has_many :users_categories
  has_many :users, through: :users_categories

  validates :name, presence: true, uniqueness: true
end
