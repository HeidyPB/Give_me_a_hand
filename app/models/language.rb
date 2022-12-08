class Language < ApplicationRecord
  has_many :users_languages
  has_many :users, through: :users_languages
end
