class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_spoken_languages
  has_many :spoken_languages, through: :user_spoken_languages
  has_many :user_categories
  has_many :categories, through: :user_categories
  has_many :meetings
  has_many :reviews
  has_many :reviews_as_friend, class_name: 'Review', foreign_key: :friend_id
  has_one_attached :photo

  validates_length_of :password, in: 6..20, on: :create

  def average_rating
    number_of_reviews = reviews_as_friend.count
    return number_of_reviews if number_of_reviews.zero?

    return reviews_as_friend.pluck(:rating).sum / number_of_reviews
  end
end
