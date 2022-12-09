class SpokenLanguage < ApplicationRecord
  has_many :user_spoken_languages
  has_many :users, through: :user_spoken_languages
end
