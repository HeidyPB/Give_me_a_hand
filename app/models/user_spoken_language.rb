class UserSpokenLanguage < ApplicationRecord
  belongs_to :spoken_language
  belongs_to :user
end
