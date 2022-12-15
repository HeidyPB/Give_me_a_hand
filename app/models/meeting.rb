class Meeting < ApplicationRecord
  belongs_to :user
  belongs_to :friend, class_name: 'User', foreign_key: :friend_id

  TITLES = ["Finance", "Real state", "Education", "Employment", "Coding"]
  validates :title, inclusion: { in: TITLES }
end
