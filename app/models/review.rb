class Review < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User', foreign_key: :friend_id
  validates :commentary, presence: true
  validates :commentary, length: { minimum: 10 }
end
