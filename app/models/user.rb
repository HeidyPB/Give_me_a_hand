class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_languages
  has_many :user_categories
  has_many :languages, through: :user_languages
  has_many :categories, through: :user_categories
  has_many :meetings

  validates_length_of :password, in: 6..20, on: :create
end
# modificar para manana
