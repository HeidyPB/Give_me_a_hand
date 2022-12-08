class Review < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User', foreign_key: :friend_id
  validates :commentary, :rating, presence: true
  validates :commentary, length: { minimum: 2 }
end
