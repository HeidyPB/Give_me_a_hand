class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :users_languages
  has_many :users_categories
  has_many :languages, through: :users_languages
  has_many :categories, through: :users_categories
  has_many :meetings
  has_many :reviews
  has_many :reviews_as_friend, class_name: 'Review', foreign_key: :friend_id

  validates_length_of :password, in: 6..20, on: :create
end
# modificar para manana
