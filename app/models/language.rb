class Language < ApplicationRecord
  has_many :users_languages
  has_many :users, through: :users_languages
  LANGUAGES = %w[English French Spanish German Japanes Chinois Italian Arabic Hindi Portuguese Russian Korean].freeze

  validates :name, inclusion: { in: LANGUAGES }
end
